## Install plugins & conf files to ~
install: uninstall

	ln -s $(shell pwd)/.tmux ~/
	ln -s $(shell pwd)/.tmux.conf ~/.tmux.conf
	
	sudo ln -s /usr/bin/tmux-next /usr/bin/tmux 2> /dev/null | true
	
	~/.tmux/plugins/tpm/bin/install_plugins

## Update all installed plugin
update:

	~/.tmux/plugins/tpm/bin/update_plugins all

## Remove plugins not on the plugin list
clean:

	~/.tmux/plugins/tpm/bin/clean_plugins

uninstall:

	rm -rf ~/.tmux*