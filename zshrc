
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

if [[ "$OSTYPE" == darwin* ]]; then
    eval "$(direnv hook zsh)"   
    
    export CLICOLOR=1
    
    alias ls="ls --color=always" 
    alias grep="grep --color=always"
    alias egrep="egrep --color=always"
else
fi

powerline_path=$(python -c 'import pkgutil; print pkgutil.get_loader("powerline").filename' 2>/dev/null)
if [[ "$powerline_path" != "" ]]; then
    source ${powerline_path}/bindings/zsh/powerline.zsh
else
# Setup your normal PS1 here.
fi

alias workon="source activate"

bindkey -v
bindkey 'jk' vi-cmd-mode

eval `dircolors ~/.dircolors`
zstyle ':completion:*:default' list-colors "${(@s.:.)LS_COLORS}"
autoload -Uz compinit && compinit

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
