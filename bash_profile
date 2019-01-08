# Git branch in prompt.

parse_git_branch() { 
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

source  ~/.bashrc
source ~/.bash_functions

export PS1="\w\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

source ~/.bash_aliases

export PATH="/usr/local/opt/python/libexec/bin:$PATH"  
export PATH="/Users/austinbrian/anaconda3/bin:$PATH"
export PATH="$PATH:~/miniconda3/bin"


