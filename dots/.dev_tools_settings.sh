#
# DEVELOPMENT TOOLS SETTINGS ######################################################################
#

# Terminal tools

alias irb="irb -r rubygems"
alias spec="spec --color"
alias gemset="rvm gemset"
alias cucumberb="bundle exec cucumber --color"
alias project="/Users/leandro/Projects/environment/bash/bin/project"
alias goto="project -g"
alias whereis-sitepackage="python -c \"from distutils.sysconfig import get_python_lib; print get_python_lib()\""
alias tcp_listening="lsof -Pnl +M -i4"

# Web server

alias apache-start="sudo launchctl load -w /System/Library/LaunchDaemons/org.apache.httpd.plist"
alias apache-stop="sudo launchctl unload -w /System/Library/LaunchDaemons/org.apache.httpd.plist"

# Java
PATH=$PATH:/System/Library/Frameworks/JavaVM.framework/Versions/Current/Commands
JAVA_HOME="`java_home`"
export JAVA_HOME
export PATH

CLASSPATH=$CLASSPATH:/opt/oracle-jdbc/ojdbc14.jar
export CLASSPATH

# Go
GO_HOME=/usr/local/Cellar/go/1.0.1
GO_WORKSPACES_HOME=/Users/leandro/Projects/go
GOPATH=$GO_WORKSPACES_HOME/default:$GO_WORKSPACES_HOME/mygo:$GO_WORKSPACES_HOME/go-learning
PATH=$PATH:$GO_HOME
export GOPATH
export PATH

# RVM
RVM_HOME=/Users/leandro/.rvm/
PATH=$PATH:$RVM_HOME/bin
