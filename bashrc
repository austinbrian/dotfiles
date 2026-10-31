for g in bash_command_prompt bash_functions bradbashrc bash_aliases kube_aliases; do 
  if [ -f ~/dotfiles/$g ]; then
    source ~/dotfiles/$g
  fi
done
# ledger is loaded on demand via load_aws function

[ -f "$HOME/.local/bin/env" ] && . "$HOME/.local/bin/env"
[ -f "$HOME/.cargo/env" ] && . "$HOME/.cargo/env"
