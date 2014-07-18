# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# set PATH so it includes composers global bin directory
if [ -d "$HOME/.composer/vendor/bin" ] ; then
    export PATH="$HOME/.composer/vendor/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    export PATH="$HOME/bin:$PATH"
fi

export EDITOR=vi

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
export HISTCONTROL=ignoreboth
export HISTIGNORE='history*'

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

source "$HOME/.homesick/repos/homeshick/homeshick.sh"

