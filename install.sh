#!/usr/bin/env bash
set -eux
HERE=$(dirname $(readlink -f $0))
apt-get install -y $(cat packages.txt)

$HERE/my-bash.sh
$HERE/my-emacs.sh
$HERE/my-keyboard.sh
$HERE/my-git.sh
