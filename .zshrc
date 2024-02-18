# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="hoppy"
ZSH_CUSTOM="$HOME/.config/.oh-my-zsh"
plugins=(git)

source $ZSH/oh-my-zsh.sh
source $HOME/.zprofile

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/daybreak/google-cloud-sdk/path.zsh.inc' ]; then . '/home/daybreak/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/daybreak/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/daybreak/google-cloud-sdk/completion.zsh.inc'; fi


setopt EXTENDED_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_FIND_NO_DUPS
setopt HIST_SAVE_NO_DUPS
setopt HIST_BEEP

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


autoload -Uz compinit
zstyle ':completion:*' menu select
fpath+=~/.zfunc

export LC_CTYPE=en_US.utf8
export LANG=en_US.utf8

alias config='/usr/bin/git --git-dir=/home/daybreak/.cfg/ --work-tree=/home/daybreak'

alias ranger='TERM=kitty ranger'

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/daybreak/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/daybreak/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/daybreak/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/daybreak/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

