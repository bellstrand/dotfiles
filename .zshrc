export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="agnoster"
plugins=(
	git
	docker
	zsh-syntax-highlighting
	zsh-autosuggestions
)
source $ZSH/oh-my-zsh.sh

setopt appendhistory histignoredups histignorespace autocd nomatch autopushd pushdignoredups promptsubst
unsetopt beep
bindkey -e

autoload -U promptinit
promptinit

autoload -Uz compinit
compinit

. ~/.shell/aliases
. ~/.shell/completions
. ~/.shell/functions
. ~/.shell/prompt
. ~/.shell/variables

case "$OSTYPE" in
  linux*)   . ~/.shell/os/linux ;;
  darwin*)  . ~/.shell/os/osx ;;
  bsd*)     . ~/.shell/os/bsd ;;
  solaris*) . ~/.shell/os/solaris ;;
  msys*)    . ~/.shell/os/windows ;;
  cygwin*)  . ~/.shell/os/windows ;;
  *)        echo "unknown: $OSTYPE" ;;
esac
