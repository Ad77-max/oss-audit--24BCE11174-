#!/bin/bash

PACKAGE="git"

if dpkg -l | grep -q $PACKAGE; then
    echo "$PACKAGE is installed."
    dpkg -s $PACKAGE | grep -E 'Version|Maintainer|Description'
else
    echo "$PACKAGE is NOT installed."
fi

case $PACKAGE in
    git) echo "Git: distributed version control system" ;;
    apache2) echo "Apache: web server" ;;
    mysql-server) echo "MySQL: database system" ;;
    vlc) echo "VLC: media player" ;;
esac
