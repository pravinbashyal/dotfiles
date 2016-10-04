# Path to your oh-my-zsh installation.
  export ZSH=/home/pravin/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="mh"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/opt/genymobile/genymotion:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
alias stageInsurance="ssh deploy@52.0.76.119"

# nvim alias
alias vi="vim"
# alias vim="nvim"
alias copy="xclip -selection c $1"

# set vi mode
set -o vi

# set termainal to 256 color
export TERM=xterm-256color
export PATH="$PATH:$HOME/.npm-packages/bin"
export ANDROID_HOME="/home/pravin/Android/Sdk"
export GRADLE_USER_HOME="/home/pravin/.gradle"
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools
GEM_HOME='/home/pravin/.gems'
export PATH="$HOME/.linuxbrew/bin:$PATH"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

export PATH="$PATH:$HOME/bin" # Add RVM to PATH for scripting
export XDG_DATA_DIRS="/home/pravin/.linuxbrew/share:$XDG_DATA_DIRS"
export XDG_DATA_DIRS="/home/pravin/.linuxbrew/share:$XDG_DATA_DIRS"
export INSURANCE_DATABASE_PASSWORD="saakaajula"
export JRUBY_OPTS="--dev -J-Xms512m -J-Xmx512m -J-XX:+UseConcMarkSweepGC -J-XX:-UseGCOverheadLimit -J-XX:+CMSClassUnloadingEnabled"
export EDITOR='vim'
source ~/.bin/tmuxinator.zsh
