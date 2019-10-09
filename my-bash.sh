#!/usr/bin/env bash
if [[ ! -e ~/.bash-it ]] ; then
    git clone --depth=1 https://github.com/jakobadam/bash-it.git ~/.bash_it
    ~/.bash_it/install.sh
fi

# bash-it enable plugin git
# bash-it enable alias git emacs
