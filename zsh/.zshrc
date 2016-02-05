# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="muse"
ZSH_THEME="muse"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often to auto-update? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment following line if you want to the command execution time stamp shown 
# in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git osx bower node github npm brew sublime rails ruby)

source $ZSH/oh-my-zsh.sh

# User configuration


# MYSQL=/usr/local/mysql/bin
# export PATH=$PATH:$MYSQL
# export DYLD_LIBRARY_PATH=/usr/local/mysql/liib:$DYLD_LIBRARY_PATH


# export PATH="/usr/local/var/rbenv/shims:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin"
# export MANPATH="/usr/local/man:$MANPATH"


# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

# export EDITOR='/usr/bin/vim'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# - CodeScience related settings
# source ~/.cs/.cs.rc


# Android tools
PATH=$PATH:$HOME/Library/Android/sdk/tools

#### Andrew's Aliases
alias gd='cd ~/Google\ Drive'
alias gs='gulp serve'
alias pg="postgres -D /usr/local/var/postgres"




export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
