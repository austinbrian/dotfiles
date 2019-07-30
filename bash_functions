
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

krnlenv() { 
        source ~/envs/$1/bin/activate
        pip install --upgrade pip && pip install ipykernel jupyter
        ipykernel kernel install --user --name=$1
}

rmenv() {
	rm -rf ~/envs/$1
        jupyter kernelspec uninstall $1
}

tat() {
        tmux at -t $1
}

tls() {
        tmux ls
}
