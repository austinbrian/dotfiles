
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

# "Nord Salmon" theme for bat/less and glow/dlog. Sources live in this repo
# under config/; nothing is authored in ~/.config directly. The bat theme is
# symlinked and must be compiled into bat's cache — re-run `make theme` (or just
# `bat cache --build`) after editing the tmTheme. glow reads its JSON by path via
# $GLAMOUR_STYLE, so it needs no build step.
theme :
	mkdir -p ~/.config/bat
	ln -sfn ~/dotfiles/config/bat/themes ~/.config/bat/themes
	bat cache --build
	@echo 'Installed. Verify: bat --list-themes | grep "Nord Salmon"'

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
	brew install tmux vim bat glow
	make bash
	make tmux
	make vim
	make theme

