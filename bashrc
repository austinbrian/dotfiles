for g in bash_command_prompt bash_functions bradbashrc bash_aliases kube_aliases; do 
  if [ -f ~/dotfiles/$g ]; then
    source ~/dotfiles/$g
  fi
done
# ledger is loaded on demand via load_aws function

. "$HOME/.local/bin/env"
