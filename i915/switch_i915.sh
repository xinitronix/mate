#!/bin/sh

# 1. Проверка прав root
if [ "$(id -u)" -ne 0 ]; then
    printf "%s: must be run as root\n" "${0##*/}"
    exit 1
fi

# 2. Поиск встроенной графики Intel
RESULT=$(pciconf -l | grep -E "pci0:[0-9]+:2:0")

set_i915kms () {
    echo "Переключаем режим на: Intel (i915kms)"
    # Удаляем старый kld_list и записываем новый
    sed -i '' '/^kld_list=/d' /etc/rc.conf
    echo 'kld_list="linux64 nullfs cuse i915kms"' >> /etc/rc.conf
    
    # Настройка Xorg для Intel
    rm -f /etc/X11/xorg.conf
    mkdir -p /usr/local/etc/X11/xorg.conf.d
    cp /usr/local/etc/i915/20-intel.conf /usr/local/etc/X11/xorg.conf.d/
}

set_nvidia () {
    echo "Переключаем режим на: NVIDIA"
    # Удаляем старый kld_list и записываем новый
    sed -i '' '/^kld_list=/d' /etc/rc.conf
    echo 'kld_list="linux64 nullfs cuse nvidia-drm"' >> /etc/rc.conf
    
    # Настройка Xorg для NVIDIA
    rm -f /usr/local/etc/X11/xorg.conf.d/20-intel.conf
    cp /usr/local/etc/i915/xorg.conf /etc/X11
}

# 3. Логика проверки и переключения
if [ -z "$RESULT" ]; then
    zenity --error \
        --title="Ошибка GPU" \
        --text="Интегрированная видеокарта Intel не найдена.\nПроверь BIOS/UEFI."
    exit 1
else
    zenity --info \
        --title="GPU OK" \
        --text="Видеокарта обнаружена:\n$RESULT"

    # Проверяем, установлен (прописан) ли i915kms в rc.conf
    if grep -q "i915kms" /etc/rc.conf; then
        echo "Драйвер i915kms найден в rc.conf. Меняем на NVIDIA..."
        set_nvidia
    else
        echo "Драйвер i915kms НЕ найден в rc.conf. Включаем Intel..."
        set_i915kms
    fi
fi
