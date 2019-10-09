#!/usr/bin/env bash
if [ "$(id -u)" != "0" ]; then
    echo "Sorry, you are not root."
    exit 1
fi

HERE=$(dirname $(readlink -e ${BASH_SOURCE[0]}))

# ctrl on caps-lock
grep "ctrl:nocaps" /etc/default/keyboard
if [[ $? -ne 0 ]]; then
    chmod u+w /etc/default/keyboard
    echo 'XKBOPTIONS="ctrl:nocaps"' >> /etc/default/keyboard
    chmod u-w /etc/default/keyboard
fi

# add my keymap: us with danish special letters etc...

## remove compiled symbol maps
rm -f /var/lib/xkb/*.xkm

## add my custom layout
grep "us-dk" /usr/share/X11/xkb/symbols/us
if [[ $? -ne 0 ]]; then
    cat "${HERE}/xkb/us-dk-xkb-symbols" >> /usr/share/X11/xkb/symbols/us
    cp "${HERE}/xkb/evdev.xml" /usr/share/X11/xkb/rules
fi

# TODO: Add keyboard to text entry and select it
