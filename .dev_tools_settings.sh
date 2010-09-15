#
# DEVELOPMENT TOOLS SETTINGS ######################################################################
#

# Terminal tools

alias irb="irb -r rubygems"
alias spec="spec --color"
alias fsi="mono $MONO_OPTIONS /opt/fsharp/bin/fsi.exe"
alias fsc="mono $MONO_OPTIONS /opt/fsharp/bin/fsc.exe"
alias tracker="/Users/leandro/Projects/ruby/pivotal-tracker-console/bin/tracker"
alias ebuilder="/Users/leandro/Projects/ruby/ebuilder/bin/ebuilder"

# Database

alias couchdb-start="couchdb -b && echo Futon: Overview at http://localhost:5984/_utils"
alias couchdb-stop="couchdb -d"

# Middleware

alias openjms-startup="/opt/openjms/bin/startup.sh &"
alias openjms-shutdown="/opt/openjms/bin/shutdown.sh"
alias openjms-admin="/opt/openjms/bin/admin.sh"

# Web server

alias yaws-start="launchctl load -w /Library/LaunchDaemons/org.macports.yaws.plist"
alias yaws-stop="launchctl unload -w /Library/LaunchDaemons/org.macports.yaws.plist"

# Java
JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK/Home/
export JAVA_HOME

# Mono
MONO_PREFIX=/usr/local/Cellar/mono/HEAD
GNOME_PREFIX=/usr
export LD_LIBRARY_PATH=$MONO_PREFIX/lib:$LD_LIBRARY_PATH
export C_INCLUDE_PATH=$MONO_PREFIX/include:$GNOME_PREFIX/include
export ACLOCAL_PATH=$MONO_PREFIX/share/aclocal
export PKG_CONFIG_PATH=$MONO_PREFIX/lib/pkgconfig:$GNOME_PREFIX/lib/pkgconfig
export PATH=$MONO_PREFIX/bin:$PATH

# Jewler gem options
JEWELER_OPTS="--rspec"
export JEWELER_OPTS

# Mochiweb
MOCHIWEB_HOME=/opt/mochiweb
PATH=$PATH:$MOCHIWEB_HOME/scripts
export PATH MOCHIWEB_HOME

# Webmachine
WEBMACHINE_HOME=/opt/webmachine
PATH=$PATH:$WEBMACHINE_HOME/scripts
export PATH WEBMACHINE_HOME
