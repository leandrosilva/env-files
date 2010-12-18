#
# DEVELOPMENT TOOLS SETTINGS ######################################################################
#

# Terminal tools

alias irb="irb -r rubygems"
alias spec="spec --color"
alias fsi="mono $MONO_OPTIONS /opt/fsharp/bin/fsi.exe -I:/opt/fsharp/bin"
alias fsc="mono $MONO_OPTIONS /opt/fsharp/bin/fsc.exe"
alias tracker="/Users/leandro/Projects/ruby/pivotal-tracker-console/bin/tracker"
alias ebuilder="/Users/leandro/Projects/ruby/ebuilder/bin/ebuilder"
alias ikvm="mono $MONO_OPTIONS /opt/ikvm/bin/ikvm.exe"
alias ikvmc="mono $MONO_OPTIONS /opt/ikvm/bin/ikvmc.exe"
alias clj="java -cp /opt/clojure/clojure.jar"
alias cljm="java -cp /opt/clojure/clojure.jar clojure.main"
alias cucumberb="bundle exec cucumber --color"
alias iron_hammerizer="source /Users/leandro/Projects/locaweb/dev/.settings/iron_hammer/setup.sh"

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

# web2py
web2pyrizer() {
    WEB2PY_APPDIR=/opt/web2py/applications
    APPNAME=`basename $PWD`
    
    if [ "$1" = "-d" ]; then
        echo Deploying $APPNAME application to web2py server at $WEB2PY_APPDIR
        
        ln -s $PWD $WEB2PY_APPDIR/$APPNAME;
        
    elif [ "$1" = "-r" ]; then
        echo Undeploying $APPNAME application from web2py server at $WEB2PY_APPDIR

        rm $WEB2PY_APPDIR/$APPNAME;

    elif [ "$1" = "-l" ]; then
        echo Deployed applications on web2py server at $WEB2PY_APPDIR
        echo
        
        ls $WEB2PY_APPDIR
    
    else
        echo Avaliable commands:
        echo
        echo "    -d    deploy the _current_ application to web2py server"
        echo "    -r    undeploy the _current_ application from web2py server"
        echo "    -l    list deployed applications on web2py server"
        echo
        echo Consider that the _current_ application is the _current_ directory
    fi
}
