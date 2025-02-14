#!/bin/sh

dir=$(dirname "$(realpath $0)")

$dir/del.sh
$dir/del_files.sh
$dir/del_user.sh