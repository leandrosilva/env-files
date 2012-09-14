#
# DEVELOPMENT TOOLS SETTINGS ######################################################################
#

# System

ulimit -n 2560

PATH=$PATH:/usr/local/sbin
export PATH

# Terminal tools

alias irb="irb -r rubygems"
alias spec="spec --color"
alias gemset="rvm gemset"
alias fsi="mono $MONO_OPTIONS /opt/fsharp/bin/fsi.exe -I:/opt/fsharp/bin"
alias fsc="mono $MONO_OPTIONS /opt/fsharp/bin/fsc.exe"
alias tracker="/Users/leandro/Projects/ruby/pivotal-tracker-console/bin/tracker"
alias ebuilder="/Users/leandro/Projects/ruby/ebuilder/bin/ebuilder"
alias ikvm="mono $MONO_OPTIONS /opt/ikvm/bin/ikvm.exe"
alias ikvmc="mono $MONO_OPTIONS /opt/ikvm/bin/ikvmc.exe"
alias cucumberb="bundle exec cucumber --color"
alias iron_hammerizer="source /Users/leandro/Projects/locaweb/dev/.settings/iron_hammer/setup.sh"
alias jythonrizer="export PATH=/usr/local/Cellar/jython/2.5.2/libexec/bin:$PATH"
alias gitx="open /Applications/GitX.app"
alias replacer="/opt/replacer"
alias rebar="/opt/rebar"
alias elasticsearch="elasticsearch -f -D es.config=/usr/local/Cellar/elasticsearch/0.19.2/config/elasticsearch.yml"
alias project="/Users/leandro/Projects/environment/bash/bin/project"
alias goto="project -g"
alias git-puller="/opt/git-puller"
alias vpn-pinger="ping sc-homolog-win2.fabrica.locaweb.com.br"
alias lein="/opt/lein"
alias jmeter="/opt/apache-jmeter/bin/jmeter"
alias ipy="mono /opt/ironlangs/bin/Release/ipy.exe"
alias ir="mono /opt/ironlangs/bin/Release/ir.exe"

# Database

alias couchdb-start="couchdb -b && echo Futon: Overview at http://localhost:5984/_utils"
alias couchdb-stop="couchdb -d"

alias pg-start="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias pg-stop="pg_ctl -D /usr/local/var/postgres stop -s -m fast"

alias cassandra-stop="pgrep -u leandro -f cassandra | xargs kill -9"

# Middleware

alias openjms-startup="/opt/openjms/bin/startup.sh &"
alias openjms-shutdown="/opt/openjms/bin/shutdown.sh"
alias openjms-admin="/opt/openjms/bin/admin.sh"

alias zookeeper="/opt/kafka/bin/zookeeper-server-start.sh /opt/kafka/config/zookeeper.properties"

alias kafka="/opt/kafka/bin/kafka-server-start.sh /opt/kafka/config/server.properties"
alias kafka-producer="/opt/kafka/bin/kafka-console-producer.sh --zookeeper 127.0.0.1:2181 --topic"
alias kafka-consumer="/opt/kafka/bin/kafka-console-consumer.sh --zookeeper 127.0.0.1:2181 --topic"

# Web server

alias yaws-start="launchctl load -w /Library/LaunchDaemons/org.macports.yaws.plist"
alias yaws-stop="launchctl unload -w /Library/LaunchDaemons/org.macports.yaws.plist"

# alias jetty="(cd /opt/jetty && java -jar start.jar)"
alias jetty-rackup="/Users/leandro/Projects/ruby/jetty-rackup/bin/jetty-rackup"

# Java
JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK/Home/
export JAVA_HOME

# Mono
# MONO_PREFIX=/usr/local/Cellar/mono/HEAD
# GNOME_PREFIX=/usr
# export LD_LIBRARY_PATH=$MONO_PREFIX/lib:$LD_LIBRARY_PATH
# export C_INCLUDE_PATH=$MONO_PREFIX/include:$GNOME_PREFIX/include
# export ACLOCAL_PATH=$MONO_PREFIX/share/aclocal
# export PKG_CONFIG_PATH=$MONO_PREFIX/lib/pkgconfig:$GNOME_PREFIX/lib/pkgconfig
# export PATH=$MONO_PREFIX/bin:$PATH

# Jewler gem options
JEWELER_OPTS="--rspec"
export JEWELER_OPTS

# Mochiweb
MOCHIWEB_HOME=/opt/mochiweb
PATH=$PATH:$MOCHIWEB_HOME/scripts
export PATH

# Webmachine
WEBMACHINE_HOME=/opt/webmachine
PATH=$PATH:$WEBMACHINE_HOME/scripts
export PATH

# F#
FSHARP_COMPILER_BIN=/opt/fsharp/bin
export FSHARP_COMPILER_BIN

# Clojure
CLOJURE_CONTRIB_HOME=/usr/local/Cellar/clojure-contrib/1.2.0
export CLASSPATH=$CLASSPATH:$CLOJURE_CONTRIB_HOME/clojure-contrib.jar

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
