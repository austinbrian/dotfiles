
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

rmenv() {
	rm -rf ~/envs/$1
}

<<<<<<< HEAD
# Convenience for tmux
tat() {
	tmux at -t $1
=======
tat() {
        tmux at -t $1
}

tls() {
        tmux ls
>>>>>>> 9f5b51f2485923e76bb7bad9686a6c21386f44cf
}
