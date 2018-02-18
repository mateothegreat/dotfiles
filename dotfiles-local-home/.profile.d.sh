#!/bin/bash

# for i in /etc/profile.d/*.sh ; do

#     if [ -r "$i" ]; then

#         if [ "${-#*i}" != "$-" ]; then
#             . "$i"

#             echo $i

#         else

#             # . "$i" >/dev/null

#         fi

#     fi

# done

# unset i

# Enable debug mode
#
# This can be passed as an environment variable directly.
# DEBUG=true ./tests.sh
#
[ "$DEBUG" ] && set -x

    DIR=${1:-/etc/profile.d}

SRC=`ls -A $DIR`


    # for i in `ls -A $DIR`; do

    #     # SRC="$DIR/$i"

    #     if [[ $i =~ ^[0-9]{,2}- ]]; then

    #         echo starting_with_digits: $i

    #     fi

    # done
