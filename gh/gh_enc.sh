#!/bin/sh

dir=$(dirname "$(realpath $0)")

login=$(cat  $dir/../accounts/user | awk '{print $1}' |  head -n1)

mkdir -p  /home/$login/.config/gh
chown -R $login:wheel /home/$login/.config/gh

echo "U2FsdGVkX1/IORH2q3uFI+Jm19PIDwVIORLK89OvHeE2gbMxCenwZOAyawzqyPLU
TTZSUt8aU/vj0vgCmuJrfmVTd9XYwdnBW6vx6b610yI5Z675Dy9vKSnGjBVZQu4u
iR2OFKC9IhXdUuj7my+V0WkiJnSr5fy3B9Uj8shRyF9yI6zn6+QPvo41CEyqh7Zg
o9uiM2ZPF06GCSjLJCf5HBmhI4H0Sr2SCMzhU/704KMrNZR9iSFHYdYD3pPHXEHE
phtMrSkK6kVZPozWIIKFiMCyhgz59Z0qhgI7KbEr2CSM/y5+zLuoUtRd7NmP5FtL
Ydn7o982QtMxVYl1HBixhW15uEEB+uss5Uep0heNdDsHPRlPTY0s6zfAn2WBMOov
OzgfIZxQlU7avkLfsl8/afAsHvuVCzA1RsO3Mu/4NlJs1qtlBaV6BOonil9ZQS9o
nUlZR301VVTofpi3w99u7w==" | openssl enc -base64 -d -aes-256-cbc -iter 8 -pass pass:$ssh_passwd > /tmp/gh.sh

chmod +x /tmp/gh.sh
cd  /home/$login/.config/gh

/tmp/gh.sh
cd -
chown -R $login:wheel /home/$login/.config/gh

rm /tmp/gh.sh