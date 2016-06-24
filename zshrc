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
    # source /usr/local/bin/virtualenvwrapper.sh
    
    
    export CLICOLOR=1
    
    alias ls="ls --color=always" 
    alias grep="grep --color=always"
    alias egrep="egrep --color=always"
else
    # source /usr/share/virtualenvwrapper/virtualenvwrapper.sh
fi

source /usr/local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh
source /usr/local/opt/autoenv/activate.sh
source /usr/local/opt/condawrapper/condawrapper.sh
# source /usr/local/opt/condawrapper/condawrapper_completion.bash

eval `dircolors ~/.dircolors`
zstyle ':completion:*:default' list-colors "${(@s.:.)LS_COLORS}"
autoload -Uz compinit
compinit

gpip(){
	   PIP_REQUIRE_VIRTUALENV="" pip "$@"
   }
