
bash :
	ln -sf ~/dotfiles/bash_profile ~/.bash_profile 
	ln -sf ~/dotfiles/bashrc ~/.bashrc 
	ln -sf ~/dotfiles/bash_aliases ~/.bash_aliases 
	ln -sf ~/dotfiles/bash_functions ~/.bash_functions 
	source ~/.bash_profile

vim :
	ln -sf ~/dotfiles/vim ~/.vim 
	ln -sf ~/dotfiles/vimrc ~/.vimrc 
	ln -sf ~/dotfiles/vimrc.bundles ~/.vimrc.bundles 
	ln -sf ~/dotfiles/vimrc.bundles.local ~/.vimrc.bundles.local 
	ln -sf ~/dotfiles/vimrc.local ~/.vimrc.local 
	vim +PlugInstall +qall

tmux : 
	ln -sf ~/dotfiles/tmux ~/.tmux 
	ln -sf ~/dotfiles/tmux.conf ~/.tmux.conf 
	ln -sf ~/dotfiles/tmux.conf.local ~/.tmux.conf.local 
	sh ~/.tmux/plugins/tpm/scripts/install_plugins.sh
	git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm 
 


