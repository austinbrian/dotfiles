
# Convenience definitions to activate virtualenvs and list them
actenv() {
	source ~/envs/$1/bin/activate
}

lsenv() {
	ls $1 ~/envs/
}

mkenv() {
	python -m venv ~/envs/$1
        source  ~/envs/$1/bin/activate
        echo "Env $1 created"
}

krnlenv() {
        source ~/envs/$1/bin/activate
        pip install --upgrade pip && pip install ipykernel jupyter
        ipython kernel install --user --name=$1
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
