#!/bin/sh

# Replace vim with neovim if installed
if test -f /usr/bin/nvim; then
    alias vim='nvim'
fi

# Aliased for dotfile management
alias config="/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"
alias config="/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"

alias less='less -R'

# Some stupid aliases
alias ll='ls -lahrt'
alias gh='history|grep'

