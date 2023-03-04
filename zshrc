# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
#if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
#  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
#fi

# Customize to your needs...

if [[ "$OSTYPE" == darwin* ]]; then
    eval "$(direnv hook zsh)"   
    
    export CLICOLOR=1
    
    alias ls="ls --color=always" 
    alias grep="grep --color=always"
    alias egrep="egrep --color=always"
else
fi
source ~/powerlevel10k/powerlevel10k.zsh-theme

alias workon="source activate"

bindkey -v
bindkey 'jk' vi-cmd-mode

eval `dircolors ~/.dircolors`
zstyle ':completion:*:default' list-colors "${(@s.:.)LS_COLORS}"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


export EDITOR=/usr/bin/nvim

DISABLE_UPDATE_PROMPT=true


export HISTFILE=~/.histfile
export HISTFILESIZE=1000000000
export HISTSIZE=1000000000
export HISTTIMEFORMAT="[%F %T] "

setopt INC_APPEND_HISTORY
setopt EXTENDED_HISTORY
setopt HIST_IGNORE_ALL_DUPS

autoload -Uz compinit
compinit -u
autoload -Uz bashcompinit
bashcompinit

#unsetopt nomatch



## Include Z
. /opt/z/z.sh
