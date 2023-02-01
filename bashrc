for g in bash_command_prompt \
  bash_functions \
  bradbashrc \
  bash_aliases \
  ledger \
  kube_aliases
  do 
    if [ -f ~/dotfiles/$g ]; then
      source ~/dotfiles/$g
    fi
  done

# set up pyenv

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
