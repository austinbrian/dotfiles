# Git branch in prompt.

parse_git_branch() {

    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'

}

alias hzn-edusrcon='ssh edusrcon@sldcawslnxp13.data.marriott.com'

alias hzn='ssh -X baust304@sldcawslnxp13.data.marriott.com'

export PS1="\W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "
alias ls='ls -Gh'
alias ll='ls -gohka'
alias curr='cd ~/dev/DC-DSI4/curriculum'
alias exla='cd ~/OneDrive/Excella/exla'
alias glg='git log --pretty=format:"%h %ad %s" --date=short --oneline --decorate'
alias blog='cd ~/dev/blog/austinbrian.github.io'
alias jpn='jupyter notebook'
alias notes='~/dev/DSI/notes-ds'
alias bda='cd ~/OneDrive/Documents/BDA'
alias sp='spotify pause'
alias py27='source ~/venvs/py27/bin/activate'
alias dash='source ~/venvs/dash/bin/activate'
alias virtualenv2='/Library/Python/2.7/bin/virtualenv'
alias hz='cd /Users/austinbrian/OneDrive/Excella/exla/marriott/horizon/financial-model'

# added by Anaconda2 4.3.0 installer
export PATH="/Users/austinbrian/anaconda/bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/austinbrian/Documents/google-cloud-sdk/path.bash.inc' ]; then source '/Users/austinbrian/Documents/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/austinbrian/Documents/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/austinbrian/Documents/google-cloud-sdk/completion.bash.inc'; fi

export NVM_DIR="/Users/austinbrian/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
export JAVA_HOME=$(/usr/libexec/java_home)

# added by Anaconda3 5.0.0 installer
export PATH="/Users/austinbrian/dev/anaconda3/bin:$PATH"

# added by Anaconda3 installer
export PATH="/Users/austinbrian/anaconda3/bin:$PATH"
export PATH="/usr/local/opt/imagemagick@6/bin:$PATH"
export MAGICK_HOME=/usr/local/opt/imagemagick@6

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

source ~/.iterm2_shell_integration.bash
