#!/usr/bin/env bash
HERE=$(dirname $( readlink -e ${BASH_SOURCE[0]}))

# ensure correct permission
chmod -R 700 ${HERE}/ssh

# SSH conf
if [[ "$(readlink -f ~/.ssh)" != "${HERE}/ssh" ]]; then
    rm -rf ~/.ssh
    ln -s ${HERE}/ssh ~/.ssh
fi

