#!/bin/bash

pathmunge () {

    case ":${PATH}:" in
        *:"$1":*)
            ;;
        *)
            if [ "$2" = "after" ] ; then
                PATH=$PATH:$1
            else
                PATH=$1:$PATH
            fi
    esac

}

starting_with_digits() {

    DIR=${1:-/etc/profile.d}

    for i in `ls -A $DIR`; do

        SRC="$DIR/$i"

        if [[ $i =~ ^[0-9]{,2}- ]]; then

            echo starting_with_digits: $i

        fi

    done

}

git_clone() {

    echo
    echo "Cloning from github.com:"
    echo

    DIR=""
    BASE=$(python -c "import urlparse; print urlparse.urlparse(raw_input()).path.replace('/', '', 1)" <<< $1)

    if [ -z $2 ]; then

        DIR=$BASE

    else

        DIR=$2

    fi

    DIR="/workspace/.inbox-clones/$DIR"

    echo "  + 1:    $1"
    echo "  + 2:    $2"
    echo "  + BASE: $BASE"
    echo "  + DIR:  $DIR"
    echo

    if [ -r "$DIR" ]; then

        echo "  - Repository exists!"

    else 

        git clone https://github.com/$BASE $DIR

    fi
    
    SIZE=$(du -sh $DIR)

    echo
    echo "  + SIZE: $SIZE"
    echo

}
