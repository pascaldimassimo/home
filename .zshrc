# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
export ZSH_THEME="pascal"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# export DISABLE_AUTO_TITLE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(svn brew extract)

source $ZSH/oh-my-zsh.sh

# Disable autocorrection
unsetopt correct_all

export SVN_EDITOR=vim

# Alias
alias mvim="mvim --remote-tab-silent"
alias tailf="tail -f"
alias f='find . -iname'
alias rm='rm -rf'
alias g='grep -rl'
alias p='pgrep -lf'
alias k='pkill -lf'
alias mou='open -a Mou'
alias less='less -i'
alias l='ls -la'
alias lt='ls -lath | less'
alias lth='ls -lath | head'

# Task manager
alias t='python ~/apps/t/t.py --task-dir ~/Dropbox/tasks --list tasks'
alias h='python ~/apps/t/t.py --task-dir ~/Dropbox/tasks --list home'

# Misc
alias cleansvn='find . -name \.svn -exec rm -rf {} \;'

# Grep into folder by file type
function gg {
 filter=*
 if [[ -n $2 ]]; then filter=*.$2; fi
 grep --include=$filter -irl $1 . 2> /dev/null
}

function anti {antiword $@ | less}

function rdiff {
 if [[ $# -lt 2 ]]; then echo "USAGE rdiff DIR1 DIR2 [pattern]"; return 1; fi
 pattern=*
 if [[ -n $3 ]]; then pattern=$3; fi
 find $1 -iname $pattern -type f -exec sh -c 'x={}; y=$1/; path=${x#$y}; diff -bq {} $2/$path' _ $1 $2 \;
}

# PH
export PH=~/sematext/st-ProjectHub

# Java 6
#export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK/Home

# Java 7
export JAVA_HOME=$(/usr/libexec/java_home)

#export MAHOUT_HOME=~/java/mahout-trunk
#export HADOOP_HOME=~/java/hadoop-0.20.203.0
#export HBASE_HOME=~/java/hbase-0.90.3
export NUTCH_RUNTIME_HOME=~/java/nutch-1.3/runtime/local
#export HADOOP_CONF_DIR=~/java/hadoop-0.20.203.0/conf
export ANT_HOME=~/java/apache-ant-1.8.2
export GROOVY_HOME=~/java/groovy-1.8.2
export GANT_HOME=~/java/gant-1.9.1
export ANDROID_HOME=~/java/android-sdk-mac_x86
export GRAILS_HOME=~/java/grails-2.0.0
export PLAY_HOME=~/java/play-1.2.4
export SONAR_RUNNER_HOME=~/java/sonar-runner-2.2
export M2_HOME=~/java/apache-maven-3.1.1

export M2=$M2_HOME/bin
export MAVEN_OPTS="-Xms256m -Xmx2g"

export NUTCH_CONF_DIR="./conf"
export NUTCH_LOG_DIR="./logs"

# Elasticsearch settings
export ES_JAVA_OPTS="-server"
export ES_MAX_MEM="2g"

# include if it exists
if [ -f ~/.local_vars ]; then
   source ~/.local_vars
fi

PATH=~/bin:/usr/local/bin:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$SONAR_RUNNER_HOME/bin:$M2:$PATH

# Add RVM to PATH for scripting

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*