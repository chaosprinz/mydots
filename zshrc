# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
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
plugins=(git ruby rake bundler colorize copyfile copydir debian extract tmux nvm npm)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH=$HOME/bin:/usr/local/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# # Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

export EDITOR="vim"
export SHELL="/bin/zsh"
export TERM="xterm-256color"

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

alias x="exit"
alias tmd="tmux new-session"
alias xt="tmux detach"
alias diablo='playonlinux --run "Diablo III"'


bindkey '\e[A' history-beginning-search-backward
bindkey '\e[B' history-beginning-search-forward

source ~/.zsh-adds/tmuxinator.zsh
source ~/.zsh-adds/ni.zsh
source ~/.nvm/nvm.sh

alias npsearch="npm search --registry https://registry.npmjs.org --always-auth false"
 rangercd() {
   tempfile=$(mktemp)
   ranger --choosedir="$tempfile" "${@:-$(pwd)}" < $TTY
   test -f "$tempfile" &&
   if [ "$(cat -- "$tempfile")" != "$(echo -n `pwd`)" ]; then
     cd -- "$(cat "$tempfile")"
   fi
   rm -f -- "$tempfile"
 }

 # This binds Ctrl-O to ranger-cd:
 zle -N rangercd
 bindkey '^o' rangercd
