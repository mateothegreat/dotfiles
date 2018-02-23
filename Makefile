install:

	rm -f ~/.bashrc
	rm -f ~/.bash_aliases
	rm -f ~/.vimrc
	rm -f ~/.inputrc
	rm -f ~/.gitconfig

	ln -s $(shell pwd)/.bashrc ~/
	ln -s $(shell pwd)/.bash_aliases ~/
	ln -s $(shell pwd)/.vimrc ~/
	ln -s $(shell pwd)/.inputrc ~/
	ln -s $(shell pwd)/.gitconfig ~/

	@echo "Copy & Paste and run:"
	@echo exec -l bash

backup:

	cp ~/.bashrc ~/.bashrc.bak