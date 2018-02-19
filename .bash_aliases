
# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi


alias ll='ls -lath'
alias l='ls -lath'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

alias gc="git add . && git commit -am'bump' && git push"
alias gm="git add . && git commit -a && git push"       

alias makeadd="git submodule add -b master git@github.com:mateothegreat/.make.git"

alias gkecreds="gcloud container clusters get-credentials"

alias docker="/mnt/c/Program\ Files/Docker/Docker/resources/bin/docker.exe"

alias k="kubectl"
alias kgd="kubectl get deploy -o wide --all-namespaces"
alias kgrs="kubectl get rs -o wide --all-namespaces"
alias kgrc="kubectl get rc -o wide --all-namespaces"
alias kgds="kubectl get ds -o wide --all-namespaces"
alias kgp="kubectl get pod -o wide --all-namespaces"
alias kgi="kubectl get ing -o wide --all-namespaces"
alias kgs="kubectl get svc -o wide --all-namespaces"

alias kd="kubectl describe"
alias kdi="kubectl describe pod"
alias kds="kubectl describe svc"
alias kdi="kubectl describe ing"
alias kdd="kubectl describe deploy" 