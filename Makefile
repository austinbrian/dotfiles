
bash :
	ln -s ~/.bash_profile ~/dotfiles/bash_profile
	ln -s ~/.bashrc ~/dotfiles/bashrc
	ln -s ~/.bash_aliases ~/dotfiles/bash_aliases
	ln -s ~/.bash_functions ~/dotfiles/bash_functions
	source ~/.bash_profile

vim :
	ln -s ~/.vim ~/dotfiles/vim
	ln -s ~/.vimrc ~/dotfiles/vimrc
	ln -s ~/.vimrc.bundles ~/dotfiles/vimrc.bundles
	ln -s ~/.vimrc.bundles.local ~/dotfiles/vimrc.bundles.local
	ln -s ~/.vimrc.local ~/dotfiles/vimrc.local
	vim +PlugInstall +qall

tmux : 
	ln -s ~/.tmux ~/dotfiles/tmux
	ln -s ~/.tmux.conf ~/dotfiles/tmux.conf
	ln -s ~/.tmux.conf.local ~/dotfiles/tmux.conf.local
	sh ~/.tmux/plugins/tpm/scripts/install_plugins.sh



