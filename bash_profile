# Git branch in prompt.

parse_git_branch() { 
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\w\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

alias ls='ls -Gh'
alias ll='ls -gohka'
alias exla='cd ~/OneDrive/Excella/exla'
alias glg='git log --pretty=format:"%h %ad %s" --date=short --oneline --decorate'
alias blog='cd ~/dev/blog/austinbrian.github.io'
alias jpn='jupyter notebook'
alias notes='~/dev/DSI/notes-ds'
alias bda='cd ~/OneDrive/Documents/BDA'
alias sp='spotify pause'
alias py2='/usr/local/bin/python2'
alias py3='/usr/local/bin/python3'

source  ~/.bashrc

# added by Anaconda3 5.2.0 installer
export PATH="/usr/local/opt/python/libexec/bin:$PATH"  
export PATH="/Users/austinbrian/anaconda3/bin:$PATH"

# Convenience definitions to activate virtualenvs and list them
actenv() {
	source ~/envs/$1/bin/activate
}

lsenv() {
	ls $1 ~/envs/
}

mkenv() {
	python -m venv ~/envs/$1
}

rmenv() {
	rm -rf ~/envs/$1
}
