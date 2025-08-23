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

eval "$(zoxide init --cmd cd zsh)"
export EDITOR='hx'
export HISTSIZE=1000000
export SAVEHIST=$HISTSIZE
export PATH="/home/fros/.local/bin:/home/fros/.bun/bin:/home/fros/.cargo/bin:$PATH"
setopt EXTENDED_HISTORY
source ~/.aliases
eval "$(direnv hook zsh)"

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
