install:

	rm -f ~/.bashrc
	rm -f ~/.bash_aliases
	rm -f ~/.vimrc
	rm -f ~/.inputrc
	rm -f ~/.gitconfig

	cp $(shell pwd)/.bashrc ~/
	cp $(shell pwd)/.bash_aliases ~/
	cp $(shell pwd)/.vimrc ~/
	cp $(shell pwd)/.inputrc ~/
	cp $(shell pwd)/.gitconfig ~/

	@echo "Copy & Paste and run:"
	@echo exec -l bash

backup:

	cp ~/.bashrc ~/.bashrc.bak