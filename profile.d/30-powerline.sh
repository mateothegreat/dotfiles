#!/bin/sh

if [ -n $BASH_VERSION ]; then

    if [ -f "/usr/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh" ]; then

        source "/usr/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh"

    fi

fi