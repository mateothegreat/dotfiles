#!/bin/sh



if [ -d "/workspace/.bin" ] ; then

    pathmunge /workspace/.bin

fi


if [ -d "$HOME/.local/bin" ] ; then

    pathmunge "$HOME/.local/bin"

fi

if [ -d "/workspace/.local/bin" ] ; then

    pathmunge "/workspace/.local/bin"

fi

export PATH
