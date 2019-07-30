
# Convenience definitions to activate virtualenvs and list them
actenv() {
	source ~/envs/$1/bin/activate
}

lsenv() {
	ls $1 ~/envs/
}

mkenv() {
	python -m venv ~/envs/$1
        source  ~/evns/$1/bin/activate
        pip install ipykernel jupyter
        ipython kernel install --user --name=$1
        echo "Env $1 created"
}

rmenv() {
	rm -rf ~/envs/$1
}

tat() {
        tmux at -t $1
}

tls() {
        tmux ls
}
