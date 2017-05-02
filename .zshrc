# Path to your oh-my-zsh installation.

export OUR_PACER_USERNAME="bj1612"
export OUR_PACER_PASSWORD="6XwRuuF&"

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.

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

# export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/opt/genymobile/genymotion:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"

alias integration="ssh ubuntu@52.10.73.90"
alias integration1="ssh ubuntu@52.26.93.110"
alias elasticsearch_start="launchctl load ~/Library/LaunchAgents/homebrew.mxcl.elasticsearch.plist"
export PATH=/opt/local/lib/postgresql93/bin:$PATH

alias postgres_start='sudo /opt/local/etc/LaunchDaemons/org.macports.postgresql93-server/postgresql93-server.wrapper start';
alias postgres_stop='sudo /opt/local/etc/LaunchDaemons/org.macports.postgresql93-server/postgresql93-server.wrapper stop';
alias postgres_restart='sudo /opt/local/etc/LaunchDaemons/org.macports.postgresql93-server/postgresql93-server.wrapper restart';
# nvim alias
alias vi="vim"

# set vi mode
set -o vi

export INSURANCE_DATABASE_PASSWORD="saakaajula"

# if superuser make the username green
if [ $UID -eq 0 ]; then NCOLOR="green"; else NCOLOR="blue"; fi

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="$PATH:/opt/local/bin"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  # This loads RVM

set -o vi
bindkey '^R' history-incremental-search-backward

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

export PATH="/opt/local/libexec/qt5/bin/qmake:$PATH"
export PATH="/opt/local/libexec/qt5/bin:$PATH"
