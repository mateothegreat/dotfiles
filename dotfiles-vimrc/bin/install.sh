#!/bin/bash

pwd=`dirname $0`

if [ ! -d ~/.vim/ ]; then

	mkdir ~/.vim/

fi

cd ~/.vim
[[ -h "$HOME/.vimrc" ]] || ln -s ~/.vim/vimrc ~/.vimrc

if !(grep --quiet --no-messages lazy_load ~/.vim/bundle/Vundle.vim/autoload/vundle.vim); then
  
  echo "Installing Vundle..."
  echo ""
  
  mkdir -p ~/.vim/bundle
  rm -rf ~/.vim/bundle/Vundle.vim
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

fi


cp "$pwd/.bash_aliases" ~/.bash_aliases
cp "$pwd/.bash_profile" ~/.bash_profile
cp "$pwd/.editorconfig" ~/.editorconfig
cp "$pwd/.gitconfig" ~/.gitconfig
cp "$pwd/.screenrc" ~/.screenrc
cp -r "$pwd/.vim/autoload" "$pwd/.vim/bundle" "$pwd/.vim/colors" ~/.vim/
cp "$pwd/.vimrc" ~/.vimrc

vim -c VundleInstall -c quitall