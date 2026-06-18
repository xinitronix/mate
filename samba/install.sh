if [  -f "/usr/local/etc/mate.pid/samba_install.pid" ]; then
    echo "Файл   samba_install.pid существует"
    echo "Пропускаем установку samba"
    exit 
fi

dir=$(dirname "$(realpath $0)")
cp $dir/smb4.conf /usr/local/etc



mkdir -p /usr/local/etc/mate.pid
touch /usr/local/etc/mate.pid/samba_install.pid
