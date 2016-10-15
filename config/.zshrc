export ZSH=$HOME/.oh-my-zsh

# ZSH_THEME="lambda-mod"
# ZSH_THEME="geometry"
ZSH_THEME="zeta"
# ZSH_THEME="agnoster"

plugins=(git zsh-completions zsh-syntax-highlighting)
autoload -U compinit && compinit

source $ZSH/oh-my-zsh.sh
