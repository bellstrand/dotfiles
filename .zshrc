export ZSH="/Users/me/.oh-my-zsh"
ZSH_THEME="agnoster"
plugins=(
	git
	docker
	zsh-syntax-highlighting
	zsh-autosuggestions
)
source $ZSH/oh-my-zsh.sh

setopt appendhistory autocd nomatch autopushd pushdignoredups promptsubst
unsetopt beep
bindkey -e

autoload -U promptinit
promptinit

. ~/.shell/aliases
. ~/.shell/completions
. ~/.shell/functions
. ~/.shell/prompt
. ~/.shell/variables

