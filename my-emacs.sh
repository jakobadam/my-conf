#!/usr/bin/env bash
add-apt-repository ppa:ubuntu-elisp/ppa
apt-get update
apt-get install emacs-snapshot

if [[ ! -e ~/.emacs.d/.git ]] ; then
    rm -rf ~/.emacs.d
    git clone https://github.com/jakobadam/.emacs.d.git ~/.emacs.d
fi
