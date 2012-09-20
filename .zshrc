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
plugins=(git svn brew extract)

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
alias mou='open -a Mou'

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

# PH
export PH=~/sematext/st-ProjectHub

# Java
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK/Home
#export MAHOUT_HOME=~/java/mahout-trunk
#export HADOOP_HOME=~/java/hadoop-0.20.203.0
#export HBASE_HOME=~/java/hbase-0.90.3
export NUTCH_RUNTIME_HOME=~/java/nutch-1.3/runtime/local
#export HADOOP_CONF_DIR=~/java/hadoop-0.20.203.0/conf
export ANT_HOME=~/java/apache-ant-1.8.2
export GROOVY_HOME=~/java/groovy-1.8.2
export GANT_HOME=~/java/gant-1.9.1
export LUNR_HOME=~/lunr
export ANDROID_HOME=~/java/android-sdk-mac_x86
export GRAILS_HOME=~/java/grails-2.0.0
export PLAY_HOME=~/java/play-1.2.4

export NUTCH_CONF_DIR="./conf"
export NUTCH_LOG_DIR="./logs"

# Elasticsearch settings
export ES_JAVA_OPTS="-server"
export ES_MAX_MEM="2g"

# include if it exists
if [ -f ~/.local_vars ]; then
   source ~/.local_vars
fi

PATH=~/bin:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$PATH

# load RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
