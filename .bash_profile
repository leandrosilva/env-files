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
export PS1='\n\[\e[0;32m\]\u@\h \[\e[0;33m\]\w \[\e[0;35m\]$(__git_ps1 "(%s)")\n\[\e[0;32m\]\$ \[\e[0;37m\]'

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

alias tar-xvf="tar xvf"

# Database

alias cdb-start="sudo couchdb -b && echo Futon: Overview at http://localhost:5984/_utils"
alias cdb-stop="sudo couchdb -d"

# Middleware

alias openjms-startup="/opt/openjms/bin/startup.sh &"
alias openjms-shutdown="/opt/openjms/bin/shutdown.sh"
alias openjms-admin="/opt/openjms/bin/admin.sh"

# Development tools

alias irb="irb -r rubygems"
alias spec="spec --color"

# Web server

alias yaws-start="sudo launchctl load -w /Library/LaunchDaemons/org.macports.yaws.plist"
alias yaws-stop="sudo launchctl unload -w /Library/LaunchDaemons/org.macports.yaws.plist"

#
# RVM SETTINGS ####################################################################################
#

if [[ -s /Users/leandro/.rvm/scripts/rvm ]] ; then
	source /Users/leandro/.rvm/scripts/rvm ;
fi

#
# MACPORTS SETTINGS ###############################################################################
#

# Your previous /Users/leandro/.bash_profile file was backed up as
# /Users/leandro/.bash_profile.macports-saved_2009-06-20_at_16:13:27

# MacPorts Installer addition on 2009-06-20_at_16:13:27: adding an appropriate PATH variable for use
# with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

# MacPorts Installer addition on 2009-06-20_at_16:13:27: adding an appropriate MANPATH variable for
# use with MacPorts.
export MANPATH=/opt/local/share/man:$MANPATH
# Finished adapting your MANPATH environment variable for use with MacPorts.
