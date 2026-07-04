#!/bin/sh
if test "$(id -u)" -ne 0; then
	printf "%s must be run as root\n" "${0##*/}"
	exit 1
fi



# Функция для сборки модуля vmm.ko
build_vmm_module() {
    echo "Запуск сборки модуля vmm..."
    
    export MAKEOBJDIRPREFIX=/tmp/obj/

    # Проверка наличия строки в исходнике
    FILE="/usr/src/sys/amd64/vmm/x86.c"
    PATTERN='static const char bhyve_id[12] = "KVMKVMKVM\0\0\0";'

    if ! grep -Fq "$PATTERN" "$FILE"; then
        printf "WARNING: required bhyve_id string not found in %s\n" "$FILE"
        return 1
    fi

    # Переход в директорию исходников модуля
    cd /usr/src/sys/modules/vmm || return 1
    
    # Сборка
    make -j6
    
    # Создание директории (если bsd.obj.mk этого требует) и переход к объектам
    mkdir -p /tmp/obj/
    cd /tmp/obj/ntfs-2TB/src/amd64.amd64/sys/modules/vmm || return 1
    
    # Копирование и очистка временных файлов
    cp vmm.ko /usr/local/etc/winbox
    rm -rf /tmp/obj/
    
    echo "Модуль vmm успешно собран и скопирован."
    return 0
}

# 1. Получаем ветку текущего запущенного ядра из uname
UNAME_BRANCH=$(uname -a | awk '{print $5}' | cut -d'-' -f1)

# 2. Получаем ветку Git строго из директории /usr/src
GIT_BRANCH=$(git -C /usr/src branch --show-current 2>/dev/null)

# Проверяем, удалось ли прочитать ветку из /usr/src
if [ -z "$GIT_BRANCH" ]; then
    echo "Ошибка: В /usr/src не найден Git-репозиторий!"
    exit 1
fi

echo "Ветка системы (uname): $UNAME_BRANCH"
echo "Ветка исходников (git): $GIT_BRANCH"
echo "--------------------------------------"

# 3. Сравниваем строки
if [ "$UNAME_BRANCH" = "$GIT_BRANCH" ]; then
    echo "Ветки совпадают. Переходим к сборке..."
    
    # Вызов функции сборки
    if build_vmm_module; then
        echo "Скрипт успешно завершил работу."
    else
        echo "Ошибка внутри функции сборки модуля!"
        exit 1
    fi
else
    echo "Ошибка: Ветка ядра ($UNAME_BRANCH) не совпадает с веткой исходников ($GIT_BRANCH)!"
    exit 1
fi
