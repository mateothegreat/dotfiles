# -*- mode: Shell-script; sh-basic-offset: 4; -*-

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="agnoster"

ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_MODE='awesome-fontconfig'
zprompt_theme='powerlevel9k'


# Load all symbol font maps
for map in ~/.fonts/*.sh; do source $map; done


DISABLE_AUTO_UPDATE="true"
DISABLE_AUTO_TITLE="true"
HIST_STAMPS="yyyy-mm-dd"

plugins=('docker' 'docker-compose' 'jhipster' 'time' 'text' 'chunkly' 'git' 'powerline' 'colors' 'nvm' 'python-environment')


export TERM="xterm-256color"
export EDITOR="emacs-client"
export LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH
export PYTHON="python2.7"

source $ZSH/oh-my-zsh.sh

#
# PET - Snippets Manager
# https://github.com/knqyf263/pet
#
function pet-select() {

  BUFFER=$(pet search --query "$LBUFFER")
  CURSOR=$#BUFFER

  zle redisplay

}

zle -N pet-select
stty -ixon
bindkey '^s' pet-select

#
# Enable loading /etc/profile.d/ scripts
#
# source /etc/profile


# source $HOME/antigen.zsh
    
# # Load the oh-my-zsh's library
# antigen use oh-my-zsh

# antigen bundle <<EOBUNDLES
#     # Bundles from the default repo (robbyrussell's oh-my-zsh)
#     git

#     # Syntax highlighting bundle.
#     zsh-users/zsh-syntax-highlighting

#     # Fish-like auto suggestions
#     zsh-users/zsh-autosuggestions

#     # Extra zsh completions
#     zsh-users/zsh-completions
# EOBUNDLES

# # Load the theme
# antigen theme robbyrussell

# # Tell antigen that you're done
# antigen apply
