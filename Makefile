install:

	rm -f ~/.bashrc
	rm -f ~/.bash_aliases
	ln -s $(shell pwd)/.bashrc ~/
	ln -s $(shell pwd)/.bash_aliases ~/

backup:

	cp ~/.bashrc ~/.bashrc.bak