#!/bin/sh

usage() {
	cat >&2 << EOF
Usage: ${0} <branch> [<build_options>]
	Checkouts to <branch> and builds it with 
<build_options> (see build.sh for more information).
EOF
	exit 1
}

set -e
set -u

readonly script_path="$(cd "$(dirname "${0}")" && pwd)"
readonly branch="${1?Missing <branch>$(usage)}"
shift
echo $branch

cd /ntfs-2TB/corvin-src-140
git fetch --all --prune
git checkout -f "${branch}"

${script_path}/build.sh "$@"