export EDITOR=/usr/bin/vim
export BROWSER=/usr/bin/firefox
export PATH=$HOME/bin:$PATH:~/.local/bin:$HOME/.node/bin

if test -f /usr/bin/termite; then
    export TERMINAL=/usr/bin/termite
else
    export TERMINAL=/usr/bin/xfce4-terminal
fi

export TERM=xterm-256color
export MANPAGER="/usr/bin/less"
export PAGER="/usr/bin/less"
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'
