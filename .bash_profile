#
# DEVELOPMENT SETTINGS ############################################################################
#

# Load settings to development tools
if [ -f ~/.dev_tools_settings.sh ]; then
  source ~/.dev_tools_settings.sh
fi

# Enable git_completion support
if [ -f ~/.git_completion.sh ]; then
  source ~/.git_completion.sh
fi

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

#
# RVM SETTINGS ####################################################################################
#

if [[ -s /Users/leandro/.rvm/scripts/rvm ]] ; then
	source /Users/leandro/.rvm/scripts/rvm ;
fi
