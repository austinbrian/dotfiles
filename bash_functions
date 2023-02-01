# vim: set filetype=sh :
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
	python -m venv ~/envs/$1
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

s3-head() {
        if [ -z "$1" ]
          then 
            echo "No file specified"
        else
          FILE=$1
          # todo: use sed to split out just the s3 bucket part from the rest of the key
          aws s3api select-object-content --bucket $FILE --key $FILE \
          --expression "select * from s3object limit 10" \ 
          --expression-type "SQL" \
          --input-serialization "CSV={}" \
          --output-serialization "CSV={}" \
          ttttmp.csv | head ttttmp.csv && rm ttttmp.csv
        fi
}
opw() {echo hlVu2w03LK8s|pbcopy}

create_ecr() {
  REPO_NAME=$1
  output=$(aws ecr describe-repositories --repository-names ${REPO_NAME} 2>&1)

  if [ $? -ne 0 ]; then
    if echo ${output} | grep -q RepositoryNotFoundException; then
      aws ecr create-repository --repository-name ${REPO_NAME}
    else
      >&2 echo ${output}
    fi
  fi}
