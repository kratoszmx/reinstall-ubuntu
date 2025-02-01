# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export TERM=xterm-256color
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerline"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git z zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# User configuration
export PATH="$HOME/.local/bin:$PATH"
export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.utf8
export LANG=zh_TW.utf8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
export DefaultIMModule=fcitx

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias chrome='fcitx-autostart &>/dev/null && google-chrome --force-device-scale-factor=1.75'


#proxy
# 系统默认模式
# host_ip=$(cat /etc/resolv.conf |grep "nameserver" |cut -f 2 -d " ")
# export ALL_PROXY="http://$host_ip:7890"
# 手机热点
# export ALL_PROXY="http://192.168.43.100:7890"
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/kratoschu/.local/local/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/kratoschu/.local/local/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/kratoschu/.local/local/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/kratoschu/.local/local/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup

echo
echo 'Note: quant env activated!'
echo 'Warning: chmod 0700 /run/user/1000/ DONE!!!'
echo
conda activate quant
chmod 0700 /run/user/1000/

# <<< conda initialize <<<

export LONGPORT_APP_KEY=b350da11bb45bef4d55f011d0cf21bea
export LONGPORT_APP_SECRET=7d81124b5ca4c5bf9dc9bc11863ea771019377596a93a7974f1955e521aa3500
export LONGPORT_ACCESS_TOKEN=m_eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJsb25nYnJpZGdlIiwic3ViIjoiYWNjZXNzX3Rva2VuIiwiZXhwIjoxNzE3ODgzNDA3LCJpYXQiOjE3MTAxMDc0MDgsImFrIjoiYjM1MGRhMTFiYjQ1YmVmNGQ1NWYwMTFkMGNmMjFiZWEiLCJhYWlkIjoyMDI5MjQ2NiwiYWMiOiJsYl9wYXBlcnRyYWRpbmciLCJtaWQiOjEyNTg0NjIxLCJzaWQiOiJBRG1UWWw1MERWTFNPRHpSdS9La1pBPT0iLCJibCI6MywidWwiOjAsImlrIjoibGJfcGFwZXJ0cmFkaW5nXzIwMjkyNDY2In0.OGCNUeSIRBg02l31Q9asCwJYqzlZo8wWUZz4LJXN-Tct1dWdougmcsAZwZ1orPJuBoBvSfVMib5s603zNxJlU2pvDq87xo2qVf6s5yGMxTrxI_nEvS55UbNu1ADjqpjaX6h-KCD15zCOO50n1De2hVWHv9rqN5I2hbRaPu0mTYvw2Sn719iK8Ci1EjPSC9ZXzfQBFaKmcA1wkoW5D5pGtbT8_BVFoDCgWIhiOwFGnrgZi46TGSPkgXSOCX0d54V13GE6ZfkIkOsuc5vJUOdJga7E3mIEmNOOTg9RG0LmEHCJjst9Y5Zi4L9UdxS5SBCYH66cjp5I0Q5D_3FPWaaqAT5tP6Oxm1s1rHhDhnfvCH274ek_KN3GSlXZDdvuDxXMYRs9DMw8ABpt2_IrgjDKkDbh77U7YQHXZOhZl8Z_2RqSKp-FbFsZ2PYovlCnOCJp5ZOO7R4vTJfAdYONy8b_fxlGKJXnxbrNyr4ygunnPeST04xdFw_8D9oulSsyaly-SBLv8njxsJl-5zOrW559hoByF3PsxPOmfLTWCpDbXSaObzvzJjJpf6XhoXq46OQrsvVHKi2QhaLZPnvHBSCxMO27Rsy_rFS2LJ7_XNDCW-OieCxzQOMZ9zh9jNNpKJQeJ-jTUV_Lx2zqmWWC81zs3xNYo5qbVdF1GEJtZDzVtls

