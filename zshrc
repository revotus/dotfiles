#
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
    source $HOME/anaconda2/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh
    source /usr/local/opt/autoenv/activate.sh
    
    
    export CLICOLOR=1
    
    alias ls="ls --color=always" 
    alias grep="grep --color=always"
    alias egrep="egrep --color=always"
else
    source /usr/local/lib/python2.7/dist-packages/powerline/bindings/zsh/powerline.zsh
    source /usr/local/bin/activate.sh
fi

alias workon="source activate"

eval `dircolors ~/.dircolors`
zstyle ':completion:*:default' list-colors "${(@s.:.)LS_COLORS}"
autoload -Uz compinit && compinit

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
