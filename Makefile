
bash :
	ln -sf ~/dotfiles/bash_profile ~/.bash_profile 
	ln -sf ~/dotfiles/bashrc ~/.bashrc 
	ln -sf ~/dotfiles/bash_aliases ~/.bash_aliases 
	ln -sf ~/dotfiles/bash_functions ~/.bash_functions 
	source ~/.bash_profile

vim :
	# Below: enables being able to press and hold a key 
	defaults write -g ApplePressAndHoldEnabled -bool false
	ln -sf ~/dotfiles/vim ~/.vim 
	ln -sf ~/dotfiles/vimrc ~/.vimrc 
	ln -sf ~/dotfiles/vimrc.bundles ~/.vimrc.bundles 
	ln -sf ~/dotfiles/vimrc.bundles.local ~/.vimrc.bundles.local 
	ln -sf ~/dotfiles/vimrc.local ~/.vimrc.local 
	vim +PlugInstall +qall

tmux : 
	ln -sf ~/dotfiles/tmux.conf ~/.tmux.conf 
	ln -sf ~/dotfiles/tmux.conf.local ~/.tmux.conf.local 
	# git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm 
	# sh ~/.tmux/plugins/tpm/scripts/install_plugins.sh
 
 oh-my-zsh:
	# install oh-my-zsh
	sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

setup: 
	ln -sf ~/
	brew install tmux vim
	make bash
	make tmux
	make vim

