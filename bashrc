for g in bash_command_prompt bash_functions bradbashrc bash_aliases kube_aliases; do 
  if [ -f ~/dotfiles/$g ]; then
    source ~/dotfiles/$g
  fi
done
# ledger is loaded on demand via load_aws function

# set up pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
# Lazy load pyenv to speed up shell startup
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

. "$HOME/.local/bin/env"
