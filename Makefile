install:


	rm -f ~/.bashrc
	ln -s $(shell pwd)/.bashrc ~/

	. ~/.bashrc

backup:

	cp ~/.bashrc ~/.bashrc.bak