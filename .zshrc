# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
export ZSH_THEME="pascal"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
#plugins=(git brew extract)

source $ZSH/oh-my-zsh.sh

# Disable autocorrection
unsetopt correct_all

export LC_CTYPE=en_US.UTF-8

# Alias
alias tailf="tail -f"
alias f='find . -iname'
alias g='grep -rl'
alias p='pgrep -lf'
alias k='pkill -f'
alias less='less -i'
alias l='ls -la'
alias lt='ls -lath'
alias lth='ls -lath | head'

# Grep into folder by file type
function gg {
 filter=*
 if [[ -n $2 ]]; then filter=*.$2; fi
 grep --include=$filter -irl $1 . 2> /dev/null
}

export MAVEN_OPTS="-Xms256m -Xmx2g"

# include if it exists
if [ -f ~/.local_vars ]; then
   source ~/.local_vars
fi

# vi-mode
bindkey -v
bindkey '^r' history-incremental-search-backward
bindkey '^[[Z' reverse-menu-complete
bindkey '^?' backward-delete-char
precmd() { RPROMPT="" }
function zle-line-init zle-keymap-select {
   VIM_PROMPT="%{$fg_bold[blue]%} [% NORMAL]%  %{$reset_color%}"
   RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/} $EPS1"
   zle reset-prompt
}
zle -N zle-line-init
zle -N zle-keymap-select
export KEYTIMEOUT=1

PATH=~/bin:/usr/local/bin:/usr/local/sbin:$PATH
