# interactive shells only
[[ $- != *i* ]] && return

# oh-my-zsh
# export TERM=xterm-256color
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerline"

# oh-my-zsh auto update
zstyle ':omz:update' mode auto
zstyle ':omz:update' frequency 13

# Keep existing plugins unchanged for now
plugins=(
    # git
    zsh-autosuggestions
    zsh-syntax-highlighting
)

# History
HISTFILE="${ZDOTDIR:-$HOME}/.zsh_history"
HISTSIZE=50000
SAVEHIST=50000

setopt EXTENDED_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS
setopt HIST_REDUCE_BLANKS
setopt SHARE_HISTORY

source "$ZSH/oh-my-zsh.sh"
source "$HOME/.config/zsh/history_protection.zsh"

# proxy
# export https_proxy=http://127.0.0.1:7897
# export http_proxy=http://127.0.0.1:7897
# export all_proxy=socks5://127.0.0.1:7897

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/homebrew/Caskroom/miniforge/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/homebrew/Caskroom/miniforge/base/etc/profile.d/conda.sh" ]; then
        . "/opt/homebrew/Caskroom/miniforge/base/etc/profile.d/conda.sh"
    else
        export PATH="/opt/homebrew/Caskroom/miniforge/base/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

conda activate quant
echo 'Note: quant env activated!'
