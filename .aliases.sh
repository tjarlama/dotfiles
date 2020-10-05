#!/bin/sh

# Replace vim with neovim if installed
if test -f /usr/bin/nvim; then
    alias vim='nvim'
fi

# Sync using rclone
function rclone_push () {
	rclone sync $CLOUD_HOME/${1}/ crypt-${1}:
}

function rclone_push_dry () {
	rclone sync --dry-run $CLOUD_HOME/${1}/ crypt-${1}:
}

function rclone_pull () {
	rclone sync crypt-${1}: $CLOUD_HOME/${1}/
}

function rclone_pull_dry () {
	rclone sync --dry-run crypt-${1}: $CLOUD_HOME/${1}/
}

# Aliased for dotfile management
alias dots="/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"

alias todo="todo.sh -a"

alias less='less -R'

# Some stupid aliases
alias ll='ls -lahrt'
alias gh='history|grep'

