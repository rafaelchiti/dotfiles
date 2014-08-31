#!/bin/bash

# Prompt tunning
source ~/.bash_prompt

# Default editor
export EDITOR=vim

# Grep options
export GREP_OPTIONS='--color=auto'

# Bash history size
HISTFILESIZE=3000

# Bash tuning
alias ll="ls -la"
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_45.jdk/Contents/Home

# Git completition
source ~/.git_completition

# Custom aliases
alias bx="bundle exec"
alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'

# Homebrew
homebrew=/usr/local/bin:/usr/local/sbin
export PATH=$homebrew:$PATH

# rbenv
export PATH=$PATH:$HOME/.rbenv/bin
eval "$(rbenv init -)"

# NVM
[[ -s /Users/rafaelchiti/.nvm/nvm.sh ]] && . /Users/rafaelchiti/.nvm/nvm.sh # This loads NVM



### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
