source "$XDG_CONFIG_HOME/zsh/aliases"

setopt AUTO_PARAM_SLASH
unsetopt CASE_GLOB

autoload -Uz compinit; compinit

# Autocomplete hidden files
_comp_options+=(globdots)
source ~/dotfiles/zsh/external/completion.zsh

export SOLC_VERSION=0.7.6
export PATH=$PATH:~/.yarn/bin
export PATH=$PATH:~/usr/bin/python3
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

fpath=($ZDOTDIR/external $fpath)

autoload -Uz prompt_purification_setup; prompt_purification_setup

# Push the current directory visited on to the stack
setopt AUTO_PUSHD

# Do not store duplicate directories on the stack
setopt PUSHD_IGNORE_DUPS

# Do not print the directory stack after using pushd or popd
setopt PUSHD_SILENT

bindkey -v
export KEYTIMEOUT=1

# changing cursor for normal and insert mode
autoload -Uz cursor_mode  && cursor_mode

# setup hjkl to navigate auto completion menu
zmodload zsh/complist
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history

# setup external monitor 
xrandr --output
xrandr --output HDM1-1 --auto --right-of eDP-1

alias displayoff='xrandr --output HDMI-1 --off'
