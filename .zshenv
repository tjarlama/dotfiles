if test -f /usr/bin/nvim; then
    export EDITOR=/usr/bin/nvim
else
    export EDITOR=/usr/bin/vim
fi
export BROWSER=/usr/bin/firefox
export PATH=$HOME/bin:$PATH:~/.local/bin:$HOME/.node/bin

if test -f /usr/bin/termite; then
    export TERMINAL=/usr/bin/termite
else
    export TERMINAL=/usr/bin/kitty
fi

export MANPAGER="/usr/bin/less"
export PAGER="/usr/bin/less"
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'

export OS=$(uname -o)

if [ "$OS" = "Android" ]; then
    export CLOUD_HOME="/storage/emulated/0/wakanda"
else
    export CLOUD_HOME="$HOME/wakanda"
fi

export LC_CTYPE=en_US.utf8
export LANG=en_US.utf8

