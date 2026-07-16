#!/bin/sh
#
# sysmon.sh — монитор температуры CPU и самого загруженного процесса
# для FreeBSD (POSIX sh, зависимостей кроме base system нет).
#
# Использование:
#   ./sysmon.sh [-i секунды] [-n количество_итераций] [-l файл_лога] [-c]
#
#   -i N   период опроса в секундах (по умолчанию 60)
#   -n N   количество итераций (по умолчанию 0 = бесконечно)
#   -l FILE вывод дублировать в файл (append)
#   -c     разовый снимок (эквивалент -n 1), игнорирует -i
#
# Примеры:
#   ./sysmon.sh                # опрос раз в 60 сек, бесконечно
#   ./sysmon.sh -i 5           # раз в 5 сек
#   ./sysmon.sh -c             # один снимок и выход
#   ./sysmon.sh -i 1 -n 30 -l /var/log/sysmon.log
#
# Как сервис: устанавливается в /usr/local/libexec/sysmon.sh и
# запускается через rc.d-скрипт /usr/local/etc/rc.d/sysmon
# (см. sysmon.rc в комплекте).

set -u

INTERVAL=60
COUNT=0
LOGFILE=""
ONESHOT=0
STOPPING=0

# Ловим TERM/INT явно: не полагаемся на дефолтную обработку сигнала,
# чтобы гарантированно быстро выйти из цикла, даже если демон/shell
# по какой-то причине не завершает процесс мгновенно сам.
trap 'STOPPING=1' TERM INT

# Прерываемый sleep: спим по 1 секунде вместо одного длинного sleep,
# чтобы остановка (service sysmon stop) занимала ~1 сек, а не до
# полного значения -i (по умолчанию 60 сек).
sleep_interruptible() {
    n="$1"
    i=0
    while [ "$i" -lt "$n" ]; do
        [ "$STOPPING" -eq 1 ] && return
        sleep 1
        i=$((i + 1))
    done
}

usage() {
    echo "Использование: $0 [-i секунды] [-n итераций] [-l файл] [-c]" >&2
    exit 1
}

while getopts "i:n:l:ch" opt; do
    case "$opt" in
        i) INTERVAL=$OPTARG ;;
        n) COUNT=$OPTARG ;;
        l) LOGFILE=$OPTARG ;;
        c) ONESHOT=1 ;;
        h) usage ;;
        *) usage ;;
    esac
done

# Проверка что INTERVAL/COUNT — числа
case "$INTERVAL" in
    ''|*[!0-9]*) echo "Ошибка: -i должно быть целым числом" >&2; exit 1 ;;
esac
case "$COUNT" in
    ''|*[!0-9]*) echo "Ошибка: -n должно быть целым числом" >&2; exit 1 ;;
esac

[ "$ONESHOT" -eq 1 ] && COUNT=1

# Определяем число ядер, чтобы пройтись по dev.cpu.N.temperature
NCPU=$(sysctl -n hw.ncpu 2>/dev/null)
[ -z "$NCPU" ] && NCPU=1

log_line() {
    # $1 — строка для вывода
    # Если задан LOGFILE — пишем ТОЛЬКО в файл, а не дублируем на stdout.
    # Это важно при запуске через rc.d/daemon(8): stdout скрипта в этом
    # случае уводится в отдельный sysmon.daemon.log (см. sysmon.rc, -o),
    # и tee здесь привёл бы к тому, что оба файла содержали бы одни и
    # те же строки. Без LOGFILE (ручной интерактивный запуск) выводим
    # как обычно, в stdout.
    if [ -n "$LOGFILE" ]; then
        printf '%s\n' "$1" >> "$LOGFILE"
    else
        printf '%s\n' "$1"
    fi
}

get_temps() {
    # Пытаемся coretemp/amdtemp через dev.cpu.N.temperature
    i=0
    out=""
    found=0
    while [ "$i" -lt "$NCPU" ]; do
        t=$(sysctl -n "dev.cpu.$i.temperature" 2>/dev/null)
        if [ -n "$t" ]; then
            found=1
            out="${out}CPU${i}:${t} "
        fi
        i=$((i + 1))
    done

    if [ "$found" -eq 0 ]; then
        # Fallback на общий acpi thermal zone, если coretemp/amdtemp не загружен
        tz=$(sysctl -n hw.acpi.thermal.tz0.temperature 2>/dev/null)
        if [ -n "$tz" ]; then
            out="ACPI-TZ0:${tz}"
        else
            out="недоступно (загрузите модуль coretemp или amdtemp: kldload coretemp)"
        fi
    fi

    printf '%s' "$out"
}

get_top_process() {
    # Используем top вместо ps: top корректно считает WCPU (взвешенный %CPU)
    # и по умолчанию не показывает kernel idle/swapper, в отличие от
    # "ps -o pcpu -r", у которого idle (pid 11) может давать некорректные
    # значения %CPU суммируемые по всем ядрам (500%+ и т.п.)
    #
    # top -b -n 1  -> один снимок в batch-режиме (без интерактивности)
    line=$(top -b -n 1 2>/dev/null | awk '/^ *PID/{f=1;next} f && NF{print;exit}')

    if [ -z "$line" ]; then
        printf 'не удалось получить данные top'
        return
    fi

    pid=$(printf '%s' "$line" | awk '{print $1}')
    user=$(printf '%s' "$line" | awk '{print $2}')
    wcpu=$(printf '%s' "$line" | awk '{print $(NF-1)}')
    name=$(printf '%s' "$line" | awk '{print $NF}')

    # Полная командная строка (с аргументами) по PID, обрезаем для читаемости
    fullcmd=$(ps -p "$pid" -o args= 2>/dev/null | head -c 120)
    [ -z "$fullcmd" ] && fullcmd="$name"

    # Память: RSS (резидентная память) в КБ через ps, переводим в МБ,
    # плюс %MEM для наглядности.
    # ВАЖНО: не пакуем rss и %mem в один вызов "-o rss=RSS,%mem=MEM" —
    # на практике заголовок после "=" может "съесть" весь остаток строки
    # вместе с запятой, и второе поле просто не распознаётся. Надёжнее —
    # два отдельных вызова ps с одиночным "=" (без текста после), что по
    # соглашению означает "эта колонка без заголовка".
    rss_kb=$(ps -p "$pid" -o rss= 2>/dev/null | tr -d ' \t')
    mem_pct=$(ps -p "$pid" -o %mem= 2>/dev/null | tr -d ' \t')
    case "$rss_kb" in
        ''|*[!0-9]*)
            # rss_kb пуст или не число (например "-" у некоторых состояний
            # процесса) — не делаем арифметику, чтобы не уронить сабшелл
            # get_top_process() ошибкой "$((...))" и не остаться без вывода.
            mem="н/д"
            ;;
        *)
            rss_mb=$((rss_kb / 1024))
            mem="${rss_mb}MB (${mem_pct}%)"
            ;;
    esac

    printf 'Название: %s  |  PID %s  |  USER %s  |  WCPU %s  |  MEM %s  |  Команда: %s' \
        "$name" "$pid" "$user" "$wcpu" "$mem" "$fullcmd"
}

iter=0
while :; do
    ts=$(date '+%Y-%m-%d %H:%M:%S')
    temps=$(get_temps)
    top=$(get_top_process)

    log_line "[$ts] Температура: $temps"
    log_line "[$ts] Топ-процесс: $top"
    log_line "----------------------------------------------------------"

    iter=$((iter + 1))
    [ "$COUNT" -gt 0 ] && [ "$iter" -ge "$COUNT" ] && break
    [ "$STOPPING" -eq 1 ] && break

    sleep_interruptible "$INTERVAL"
    [ "$STOPPING" -eq 1 ] && break
done