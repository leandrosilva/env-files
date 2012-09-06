#
# DEVELOPMENT SETTINGS ############################################################################
#

# Load settings to development tools
source ~/.dev_tools_settings.sh

# Enable completion
source /usr/local/etc/bash_completion.d/git-completion.bash
source /usr/local/etc/bash_completion.d/git-prompt.sh
source /usr/local/etc/bash_completion.d/lein-completion.bash
source /usr/local/etc/bash_completion.d/hg-completion.bash

#
# TERMINAL SETTINGS ###############################################################################
#

# Define how Bash prompt looks like
export PS1='\n\[\e[0;32m\]\u@\h \[\e[0;33m\]\w \[\e[0;35m\]$(__git_ps1 "(%s)")\n\[\e[0;32m\]\$ \[\e[00m\]'

# Cli Colors
export CLICOLOR=1

# Use yellow for dir’s
export LSCOLORS=dxfxcxdxbxegedabagacad

# Encode
export LC_CTYPE=en_US.UTF-8

#
# ALIAS DEFINITION ################################################################################
#

# System

alias home="cd ~"
alias ll="ls -lah"
alias cls="clear"
alias grep="grep --color=auto"

alias tar-xvf="tar xvf"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

#
# RVM #############################################################################################
#

if [ -f ~/.rvm/scripts/rvm ]; then
  source ~/.rvm/scripts/rvm
fi
