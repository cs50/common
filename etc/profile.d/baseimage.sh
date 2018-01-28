# File mode creation mask
if [[ $EUID -ne 0 ]]; then
    umask 0077
fi
