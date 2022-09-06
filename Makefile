
bash :
	ln -s ~/dotfiles/bash_profile ~/.bash_profile 
	ln -s ~/dotfiles/bashrc ~/.bashrc 
	ln -s ~/dotfiles/bash_aliases ~/.bash_aliases 
	ln -s ~/dotfiles/bash_functions ~/.bash_functions 
	source ~/.bash_profile

vim :
	ln -s ~/dotfiles/vim ~/.vim 
	ln -s ~/dotfiles/vimrc ~/.vimrc 
	ln -s ~/dotfiles/vimrc.bundles ~/.vimrc.bundles 
	ln -s ~/dotfiles/vimrc.bundles.local ~/.vimrc.bundles.local 
	ln -s ~/dotfiles/vimrc.local ~/.vimrc.local 
	vim +PlugInstall +qall

tmux : 
	ln -s ~/dotfiles/tmux ~/.tmux 
	ln -s ~/dotfiles/tmux.conf ~/.tmux.conf 
	ln -s ~/dotfiles/tmux.conf.local ~/.tmux.conf.local 
	sh ~/.tmux/plugins/tpm/scripts/install_plugins.sh
	git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm 
 


