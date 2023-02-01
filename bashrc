for g in bash_command_prompt \
  kr_details \
  dragon_details \
  bash_functions \
  bradbashrc \
  bash_aliases \
  kube_aliases
  do 
    if [ -f ~/dotfiles/$g ]; then
      source ~/dotfiles/$g
    fi
  done
