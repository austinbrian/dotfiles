# Git branch in prompt.

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

source  ~/.bashrc
source ~/.bash_functions
source ~/.bradbashrc

export PS1="\w\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

source ~/.bash_aliases

export PATH="/usr/local/Cellar":$PATH
export PATH="/usr/local/opt/python/libexec/bin:$PATH"
export PATH="/Users/austinbrian/anaconda3/bin:$PATH"
export PATH="$PATH:~/miniconda3/bin"


# Bash completion
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion || {
    # if not found in /usr/local/etc, try the brew --prefix location
    [ -f "$(brew --prefix)/etc/bash_completion.d/git-completion.bash" ] && \
        . $(brew --prefix)/etc/bash_completion.d/git-completion.bash
}

export BASH_SILENCE_DEPRECATION_WARNING=1
