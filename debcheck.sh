#!/bin/bash
# debcheck.sh
# Queries a Debian package file for description, listing, and whether it can be installed.
# Saves output to a file.

SUCCESS=0
E_NOARGS=65

if [ -z "$1" ]; then
    echo "Usage: $(basename "$0") deb-file"
    exit $E_NOARGS
fi

{
    echo
    echo "Package Description:"
    dpkg-deb --info "$1"
    
    echo
    echo "Package Contents:"
    dpkg-deb --contents "$1"
    
    echo
    dpkg --install --dry-run "$1"  # Query whether deb file can be installed.

    if [ "$?" -eq $SUCCESS ]; then
        echo "$1 can be installed."
    else
        echo "$1 cannot be installed."
    fi

    echo
} > "$1.test"

echo "Results of deb test in file $1.test"
exit 0

