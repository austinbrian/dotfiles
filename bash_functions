
# Convenience definitions to activate virtualenvs and list them
actenv() {
	source ~/envs/$1/bin/activate
}

lsenv() {
	ls $1 ~/envs/
}

krnlenv() {
        source ~/envs/$1/bin/activate
        pip install --upgrade pip && pip install ipykernel jupyter
        ipython kernel install --user --name=$1
}
mkenv() {
	/usr/local/opt/python/libexec/bin/python -m venv ~/envs/$1
        source  ~/envs/$1/bin/activate
        pip install --upgrade pip && pip install ipykernel jupyter
        ipython kernel install --user --name=$1
        echo "Env $1 created"
}


rmenv() {
        deactivate
	rm -rf ~/envs/$1
        jupyter kernelspec uninstall $1
}

tat() {
        tmux at -t $1
}

tls() {
        tmux ls
}

lessmd() {
        pandoc -s -f markdown -t man "$1" | groff -T utf8 -man | less
}
