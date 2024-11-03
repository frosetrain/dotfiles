if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(
    git
    zsh-syntax-highlighting
    zsh-autosuggestions
)
source $ZSH/oh-my-zsh.sh

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(zoxide init --cmd cd zsh)"
export EDITOR='hx'
export HISTSIZE=1000000
export SAVEHIST=$HISTSIZE
export PATH="/home/fros/.local/bin:$PATH"
setopt EXTENDED_HISTORY
source ~/.aliases

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
