DOTFILES := $(shell find . -maxdepth 1 -name ".*" -type f -printf "%P \n")

install:

	@for F in $(DOTFILES); do echo Installing $$F to ~/$$F; cp -rf $$F ~/$$F; done

	@echo "Copy & Paste and run:"
	@echo exec -l bash

backup:

	cp ~/.bashrc ~/.bashrc.bak

bash-it:

	if [ -d ~/.bash_it ]; then rm -rf ~/.bash_it; fi

	git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it

	~/.bash_it/install.sh

#
# https://github.com/powerline/fonts
#
fonts-install:

	git clone https://github.com/powerline/fonts.git --depth=1
	cd fonts
	./install.sh
	cd ..
	rm -rf fonts