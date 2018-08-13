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

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/austinbrian/Documents/google-cloud-sdk/path.bash.inc' ]; then source '/Users/austinbrian/Documents/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/austinbrian/Documents/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/austinbrian/Documents/google-cloud-sdk/completion.bash.inc'; fi

# export NVM_DIR="/Users/austinbrian/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm


# added by Anaconda3 installer
export PATH="/Users/austinbrian/anaconda3/bin:$PATH"

source  ~/.bashrc

# added by Anaconda3 5.2.0 installer
export PATH="/Users/austinbrian/anaconda3/bin:$PATH"
