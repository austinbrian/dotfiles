# vim: set filetype=sh :
alias ls='ls -Gh'
alias ll='ls -gohka'
alias glg='git log --pretty=format:"%h %ad %s" --date=short --oneline --decorate'
alias jpn='jupyter notebook'
alias bda='cd ~/OneDrive/Documents/BDA'
alias sp='spotify pause'
alias py2='/usr/local/bin/python2'
alias py3='/usr/local/bin/python3'
alias sbash='source ~/.bash_profile'
alias svim='source ~/.vimrc'

# DIA specific
alias pivot="cd ~/byc/dia/Pivot"
alias mia="cd ~/byc/dia/MIA"
alias n4j_host=$NEO4J_HOST
alias n4j_auth=$NEO4J_AUTH
alias n4j_instance=$NEO4J_INSTANCE

# Docker-compose
alias dcu="docker-compose up"
alias dcd="docker-compose down"
alias dcps="docker-compose ps"
alias dcub="docker-compose up --build --force-recreate"

# Tree completion
alias mtree="tree -I 'node_modules|*.pyc|*.db*|__pycache__'"

# Dockerfile launch
alias dsjpn="docker run -p 8888:8888 -v ~/dev/docker-notebooks:/home/jovyan jupyter/datascience-notebook"

export icloud="/Users/austinbrian/Library/Mobile Documents/com~apple~CloudDocs"
alias icloud="'/Users/austinbrian/Library/Mobile Documents/com~apple~CloudDocs'"

# Kubernetes
k=kubectl

# alias showports='lsof -iTCP -sTCP:LISTEN -n -P | awk 'NR>1{print $9, $1, $2}'|sed 's/.*://'|while read port process pid; do echo "Port $port:$(ps -p $pid -o command= | sed 's/^-//')(PID:$pid)";done|sort -n'
