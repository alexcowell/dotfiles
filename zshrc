export TERM="xterm-256color"

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="bullet-train"

# Solarized Light colours -> ANSI codes
SOLARIZED_BASE03="234"
SOLARIZED_BASE02="235"
SOLARIZED_BASE01="240"
SOLARIZED_BASE00="241"
SOLARIZED_BASE0="244"
SOLARIZED_BASE1="245"
SOLARIZED_BASE2="254"
SOLARIZED_BASE3="230"
SOLARIZED_YELLOW="136"
SOLARIZED_ORANGE="166"
SOLARIZED_RED="160"
SOLARIZED_MAGENTA="125"
SOLARIZED_VIOLET="61"
SOLARIZED_BLUE="33"
SOLARIZED_CYAN="37"
SOLARIZED_GREEN="64"

BULLETTRAIN_PROMPT_ORDER=(
    time
    status
    dir
    git
    cmd_exec_time
)

BULLETTRAIN_PROMPT_CHAR="→"

BULLETTRAIN_DIR_BG=$SOLARIZED_BLUE
BULLETTRAIN_DIR_FG=$SOLARIZED_BASE2

BULLETTRAIN_STATUS_FG=$SOLARIZED_BASE3
BULLETTRAIN_STATUS_BG=$SOLARIZED_GREEN
BULLETTRAIN_STATUS_ERROR_BG=$SOLARIZED_RED

BULLETTRAIN_TIME_SHOW="true"
BULLETTRAIN_TIME_BG=$SOLARIZED_BASE1
BULLETTRAIN_TIME_FG=$SOLARIZED_BASE2

BULLETTRAIN_GIT_SHOW="true"
BULLETTRAIN_GIT_BG=$SOLARIZED_CYAN
BULLETTRAIN_GIT_FG=$SOLARIZED_BASE2
BULLETTRAIN_GIT_COLORIZE_DIRTY="true"
BULLETTRAIN_GIT_COLORIZE_DIRTY_BG_COLOR=$SOLARIZED_MAGENTA
BULLETTRAIN_GIT_COLORIZE_DIRTY_FG_COLOR=$SOLARIZED_BASE2
BULLETTRAIN_GIT_ADDED=" ✚"
BULLETTRAIN_GIT_MODIFIED=" ✹"
BULLETTRAIN_GIT_DELETED=" ✖"
BULLETTRAIN_GIT_UNTRACKED=" ✭"
BULLETTRAIN_GIT_DIRTY=" ✘"
BULLETTRAIN_GIT_CLEAN=" ✔"

BULLETTRAIN_EXEC_TIME_SHOW="true"
BULLETTRAIN_EXEC_TIME_ELAPSED=5
BULLETTRAIN_EXEC_TIME_BG=$SOLARIZED_YELLOW
BULLETTRAIN_EXEC_TIME_FG=$SOLARIZED_BASE2


# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to disable command auto-correction.
# DISABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git mvn lein npm osx)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin"
# export MANPATH="/usr/local/man:$MANPATH"

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

alias tree="tree -C"
alias serve="python -m SimpleHTTPServer 8080"

source $HOME/.zshenv

eval "$(jenv init -)"
eval "$(rbenv init -)"

