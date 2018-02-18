#!/bin/bash

USER=$(id -un)

echo User id: $USER

copy_files() {

    DIR=$1
    DEST=$2

    for i in `ls -A $DIR`; do

        SRC="$DIR/$i"
        DST="$DEST/$i"

        echo Installing $SRC to $DST

        mkdir -p $DIR

        sudo cp -R $SRC $DST
        sudo chmod --reference $SRC $DST
        sudo chown --reference $SRC $DST

    done

}


copy_files "dotfiles-local-home" $HOME
copy_files "dotfiles-etc-profiled" "/etc/profile.d"
