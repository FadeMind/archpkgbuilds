#!/usr/bin/env bash
export LANG=C
MFILE=MAINTAINEDLIST
wget -q --spider http://google.com

if [ $? -eq 0 ]; then
    if [ -e "$MFILE" ]; then
#         printf "Cleanup...\n"
#         find * -type d -exec rm -rf {} +
        printf "Downloading sources from AUR... Please wait... \n"
        for i in $(cat "$MFILE")
            do
                yaourt -G $i &> /dev/null
        done
        rm -rf */.git
        rm -rf */.SRCINFO
        rm -rf */.gitignore
        printf "AUR packages list: \n"
        ls -d */ | cut -f1 -d'/'
    else
        echo "ERROR: $MFILE file not found!"
        exit 0
    fi
else
    echo "ERROR: No Internet connection. Nothing to do."
    exit 0
fi
