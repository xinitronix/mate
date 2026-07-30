#!/bin/sh

# Получаем список screen-сессий
LIST=$(screen -ls 2>&1)

# Есть ли Dead-сессии?
if echo "$LIST" | grep -q "Dead"; then
    echo "Найдены Dead screen, выполняю screen -wipe..."
    screen -wipe >/dev/null 2>&1

    # Проверяем еще раз
    LIST=$(screen -ls 2>&1)

    if echo "$LIST" | grep -q "Dead"; then
        echo "Dead screen не удалились, удаляю $HOME/.screen"
        rm -rf "$HOME/.screen"
        exec screen
    fi
fi

# Ищем первую Detached-сессию
SESSION=$(echo "$LIST" | awk '/Detached/ {print $1; exit}')

# Если сессий нет — создаем новую
if [ -z "$SESSION" ]; then
    echo "Сессий нет, создаю новую."
    exec screen
fi

echo "Подключаюсь к $SESSION"

# Пытаемся подключиться
screen -r "$SESSION"
STATUS=$?

# Если подключение не удалось
if [ $STATUS -ne 0 ]; then
    LIST=$(screen -ls 2>&1)

    if echo "$LIST" | grep -q "There is no screen to be resumed matching"; then
        echo "Screen поврежден, удаляю $HOME/.screen"
        rm -rf "$HOME/.screen"
        exec screen
    fi

    exit $STATUS
fi