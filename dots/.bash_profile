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

ulimit -n 2560

PATH=$PATH:/usr/local/sbin
export PATH

#
# DEVELOPMENT SETTINGS ############################################################################
#

# RVM
if [ -f ~/.rvm/scripts/rvm ]; then
  source ~/.rvm/scripts/rvm
fi

# Development tools
source ~/.dev_tools_settings.sh

# Git completion
source /usr/local/etc/bash_completion
source /usr/local/etc/bash_completion.d/git-completion.bash

# Anaconda
function activate_conda {
  # >>> conda initialize >>>
  # !! Contents within this block are managed by 'conda init' !!
  __conda_setup="$('/usr/local/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
  if [ $? -eq 0 ]; then
    eval "$__conda_setup"
  else
    if [ -f "/usr/local/anaconda3/etc/profile.d/conda.sh" ]; then
      . "/usr/local/anaconda3/etc/profile.d/conda.sh"
    else
      export PATH="/usr/local/anaconda3/bin:$PATH"
    fi
  fi
  unset __conda_setup
  # <<< conda initialize <<<
}
