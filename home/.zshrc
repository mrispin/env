# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/mark/.oh-my-zsh"

# Remove user@host from prompt
export DEFAULT_USER=mark

ZSH_THEME="agnoster"

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

HIST_STAMPS="yyyy-mm-dd"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  git-auto-fetch
  git-prompt
  docker
  kube-ps1
  zsh-z
)

source $ZSH/oh-my-zsh.sh

# User configuration

# Enable Kubernetes prompt
PROMPT='$(kube_ps1)'$PROMPT

# z
zstyle ':completion:*' menu select

# Add autocomplete
autoload -U compinit && compinit

