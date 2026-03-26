#!/bin/bash

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERM=$(ls -ld $DIR | awk '{print $1}')
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
        echo "$DIR => Permissions: $PERM | Size: $SIZE"
    else
        echo "$DIR does not exist"
    fi
done

if [ -f ~/.gitconfig ]; then
    echo "Git config file found:"
    ls -l ~/.gitconfig
else
    echo "Git config file not found"
fi

