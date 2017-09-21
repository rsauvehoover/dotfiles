# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/rsauvehoover/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

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
 COMPLETION_WAITING_DOTS="true"

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
plugins=(zsh-autosuggestions git git-extras last-working-dir osx python wd)

source $ZSH/oh-my-zsh.sh

export PATH=~/Library/Python/3.6/bin:$PATH

# virtualenv exports
export WORKON_HOME=~/Envs
export HOMEBREW_EDITOR=/usr/local/bin/nvim

source /usr/local/bin/virtualenvwrapper.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
export EDITOR='nvim'

# Compilation flags
 export ARCHFLAGS="-arch x86_64"

# ssh
 export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias vim="nvim"
alias vi="nvim"
alias c='clear'

# OSX is case insensitive, this means that rm and RM are the same
# command.  So, if we are making safe aliases, then we should make the
# variations safe also.
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias ln='ln -i'
alias c='clear'
# uppercase versions
alias MV='mv -i'
alias RM='rm -i'
alias CP='cp -i'
alias LN='ln -i'
# mixed case versions
alias Mv='mv -i'
alias Rm='rm -i'
alias Cp='cp -i'
alias Ln='ln -i'
alias mV='mv -i'
alias rM='rm -i'
alias cP='cp -i'
alias lN='ln -i'

# cd aliases
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../../'
alias .2='cd ../../'
alias .3='cd ../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../../'
alias .6='cd ../../../../../../'

# show types of entries in directory listings
alias ls='ls -F -G'

alias ll='ls -lha'
alias l='ls -lh'

# sizes in k rather then 512 byte blocks
alias df='df -k'
alias du='du -k'

# convenient directory commands

# cd pushes cwd onto dir stack
#alias cd='pushd $* > /dev/null'
# swap top elemenst of dir stack
alias xd='pushd'
# pop off stack
alias pd='popd'

alias h='history'

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# iterm2 shell integration
source ~/.iterm2_shell_integration.`basename $SHELL`

# unalias imgcat from iterm2 shell integration
unalias imgcat

eval $(thefuck --alias)
