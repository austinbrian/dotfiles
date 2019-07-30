alias ls='ls -Gh'
alias ll='ls -gohka'
alias glg='git log --pretty=format:"%h %ad %s" --date=short --oneline --decorate'
alias jpn='jupyter notebook'
alias bda='cd ~/OneDrive/Documents/BDA'
alias sp='spotify pause'
alias py2='/usr/local/bin/python2'
alias py3='/usr/local/bin/python3'

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
alias dcub="docker-compose up --force-recreate --build"

# Tree completion
alias mtree="tree -I 'node_modules|*.pyc|*.db*|__pycache__'"

# Dockerfile launch
dsjpn="docker run -p 8888:8888 -v ~/dev/docker-notebooks:/home/jovyan jupyter/datascience-notebook"

