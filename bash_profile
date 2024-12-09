# Git branch in prompt.

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\w\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

export PATH="/usr/local/opt/python/libexec/bin:$PATH"
# export PATH="$PATH:/Users/austinbrian/anaconda3/bin/"
# export PATH="$PATH:~/miniconda3/bin/"
# export PATH="$PATH:/usr/local/Cellar"


# Bash completion
# [ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion || {
#     # if not found in /usr/local/etc, try the brew --prefix location
#     [ -f "$(brew --prefix)/etc/bash_completion.d/git-completion.bash" ] && \
#         . $(brew --prefix)/etc/bash_completion.d/git-completion.bash
# }

export BASH_SILENCE_DEPRECATION_WARNING=1

# the power chime is annoying, so let's kill it
# defaults write com.apple.PowerChime ChimeOnNoHardware -bool true
# killall PowerChime


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/usr/local/Caskroom/miniconda/base/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 1 ]; then
    eval "$__conda_setup"
else
    if [ -f "/usr/local/Caskroom/miniconda/base/etc/profile.d/conda.sh" ]; then
        . "/usr/local/Caskroom/miniconda/base/etc/profile.d/conda.sh"
    else
        export PATH="/usr/local/Caskroom/miniconda/base/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

