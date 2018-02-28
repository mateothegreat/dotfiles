DOTFILES := $(shell find -mindepth 1 -maxdepth 1 -type f -name '\.*' | sed 's/\.\///g')

install:

	@for F in $(DOTFILES); do echo Installing $$F to ~/$$F; cp -rf $$F ~/$$F; done

	@echo "Copy & Paste and run:"
	@echo exec -l bash

backup:

	cp ~/.bashrc ~/.bashrc.bak