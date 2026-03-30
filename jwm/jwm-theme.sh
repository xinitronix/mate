#!/bin/sh

THEME_DIR="$HOME/.jwm/themes"
JWMRC="$HOME/.jwmrc"

# Проверки
if ! command -v fzf >/dev/null 2>&1; then
    echo "Ошибка: fzf не установлен"
    exit 1
fi

if [ ! -d "$THEME_DIR" ]; then
    echo "Папка не найдена: $THEME_DIR"
    exit 1
fi

if [ ! -f "$JWMRC" ]; then
    echo "Файл не найден: $JWMRC"
    exit 1
fi

# Выбор темы через fzf
SELECTED_THEME=$(find "$THEME_DIR" -type f | sort | fzf --prompt="Выберите тему: ")

if [ -z "$SELECTED_THEME" ]; then
    echo "Выбор отменён"
    exit 0
fi

echo "Выбрана тема: $SELECTED_THEME"

# Замена ПЕРВОГО <Include> (это тема)
gsed -i '0,/<Include>/{s|<Include>.*</Include>|<Include>'"$SELECTED_THEME"'</Include>|}' "$JWMRC"

# Проверка
echo "Текущая строка темы:"
grep -m 1 "<Include>" "$JWMRC"

# Перезапуск JWM
jwm -restart

echo "Тема применена!"