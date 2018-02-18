#!/bin/bash

if [ -x /usr/bin/dircolors ]; then

    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    
    alias ls='ls --color=auto'
    alias ll="ls -lah --color=auto"
    alias ll='ls -alF --color=auto'
    alias la='ls -A --color=auto'
    alias l='ls -CF --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'

else 

    alias ll="ls -lah"
    alias ll='ls -alF'
    alias la='ls -A'
    alias l='ls -CF'

fi

alias vs="vi ~/.zshrc && source ~/.zshrc"

alias ai="sudo apt install"
alias au="sudo apt update"
alias as="sudo apt search"
alias ar="sudo apt remove"
alias aq="sudo apt show"

alias yu="sudo yum update"
alias yi="sudo yum install"
alias ys="sudo yum search all"
alias yr="sudo yum uninstall"

alias gc="git_clone $1 $2"

    alias l='ls -CF --color=auto'

# alias gc="git clone https://github.com/$0/$1 /workspace/$1"

if [ -x "/usr/bin/python3" ] ; then

    # PATH="$HOME/.local/bin:$PATH"
    alias pip="pip3"

fi

# List files with a directory tree.
# (Default directory/file then name sorting)
#
alias lst="tree -f -D -F -u -g -p -l -C -L $1"

# List files with a directory tree.
# (Sorted by last modification date
#
alias lstr="tree -f -D -F -u -g -p -l -C -t -L $1"

alias "."="cd ."
alias ".."="cd .."
{ local alias_from=".."
  local alias_to="cd .."
  for _pit in {1..42}; do
    alias_from="$alias_from."
    alias_to="$alias_to/.."
    eval "alias ${alias_from}=\"${alias_to}\""
  done
}
