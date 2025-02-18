#!/bin/sh

if test "$(id -u)" -ne 0; then
	printf "%s must be run as root\n" "${0##*/}"
	exit 1
fi

dir=$(dirname "$(realpath $0)")

if [  -f "/usr/local/etc/mate.pid/doas_install.pid" ]; then
    echo "Файл  doas_install.pid  существует"
    echo "Пропускаем установку doas"
    exit 
fi


add () {
      login=$(echo $line | awk '{print $1}' )
      echo -e "permit nopass keepenv $login\n"            >>    /usr/local/etc/doas.conf
}

cat  $dir/../accounts/user  | while read line

   do
     if [ -z "$line" ]
then
     echo "\$var Пустая"
else
     echo "\$var не пустая"
     add
fi
   done

 /usr/local/bin/gsed   -i '/^[[:space:]]*$/d' /usr/local/etc/doas.conf
# /usr/local/bin/gsed   -i '$d'                /usr/local/etc/doas.conf

mkdir -p /usr/local/etc/mate.pid
touch /usr/local/etc/mate.pid/doas_install.pid