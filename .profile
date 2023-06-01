export QT_QPA_PLATFORMTHEME="qt5ct"
export EDITOR=/usr/bin/vim
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
# fix "xdg-open fork-bomb" export your preferred browser from here
export BROWSER=/usr/bin/firefox
export PATH=$PATH:$HOME/bin:~/.local/bin:$HOME/.node/bin
export TERMINAL=termite
export MANPAGER="/usr/bin/less"
export PAGER="/usr/bin/less"

if [ -e $HOME/.aliases ]; then
    source $HOME/.aliases
fi

export PATH=$PATH:/usr/local/go/bin

