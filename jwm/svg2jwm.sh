#!/bin/sh
# =============================================
# svg2png_multi.sh — массовая конвертация SVG в PNG для JWM
# =============================================

show_help() {
cat << EOF
📌 svg2png_multi.sh — памятка по использованию

1. Подготовка SVG
   - Разместите ваши SVG-иконки в одной или нескольких папках.

2. Запуск скрипта
   - Укажите папки с SVG:
       ./svg2png_multi.sh /path/to/icons1 /path/to/icons2
   - Если папки не указаны, по умолчанию используется:
       /usr/local/share/pixmaps

3. Назначение PNG
   - PNG создаются в /usr/local/share/pixmaps
   - Имена сохраняются, расширение меняется на .png
     Пример: tint2.svg → tint2.png

4. Размер PNG
   - По умолчанию 24×24 px
   - Можно изменить в переменной SIZE внутри скрипта

5. Использование в JWM
   <IconPath>/usr/local/share/pixmaps</IconPath>
   <Program icon="tint2.png">tint2</Program>

6. Примеры:
   ./svg2png_multi.sh /usr/local/share/icons1 /usr/local/share/icons2
EOF
}

# Если нет аргументов, выводим памятку и выходим
if [ $# -eq 0 ]; then
    show_help
    exit 0
fi

# Папки с SVG (аргументы командной строки)
SRC_DIRS="$@"

# Папка назначения PNG для JWM
DST_DIR="/usr/local/share/pixmaps"

# Размер PNG
SIZE=24

# Проверка зависимости
if ! command -v rsvg-convert >/dev/null 2>&1; then
    echo "Ошибка: rsvg-convert не найден. Установите librsvg2."
    exit 1
fi

mkdir -p "$DST_DIR"

echo "Конвертация SVG → PNG для JWM"
echo "Исходники: $SRC_DIRS"
echo "Назначение: $DST_DIR"
echo "Размер PNG: ${SIZE}px"

# Проходим по каждой папке
for SRC_DIR in $SRC_DIRS; do
    if [ -d "$SRC_DIR" ]; then
        find "$SRC_DIR" -type f -name "*.svg" | while read -r file; do
            name=$(basename "$file" .svg)
            out="$DST_DIR/${name}.png"
            rsvg-convert -w "$SIZE" -h "$SIZE" "$file" -o "$out"
            echo "✔ $out"
        done
    else
        echo "⚠ Папка не найдена: $SRC_DIR"
    fi
done

echo "Готово. Все SVG сконвертированы в PNG для JWM."