#!/bin/bash                                                                 

# prompt with format: [usr@host pwd]                                                                 
PS1="[\[\033[32m\]\u\[\033[1;34m\]@\h \[\033[0;37m\]\w]\$ \[\033[0m\]"

# disable ctrl+S and ctrl+Q
stty -ixon

# set tmux enviroment stuff 
export NLS_LANG="American_America.UTF8"
export LD_LIBRARY_PATH="$HOME/bin/libevent/lib:${LD_LIBRARY_PATH}"
export PATH="$HOME/bin/tmux/bin:/usr/bin:${PATH}"
export LD_LIBRARY_PATH=${HOME}/bin/libevent/lib/:${LD_LIBRARY_PATH}
export PATH=${HOME}/bin/tmux/bin:${PATH} 
export MANPATH=${HOME}/bin/tmux/share/man:${MANPATH} 

# to work with 256 colors 
export TERM="xterm-256color"

# colors for ls
export LS_COLORS="di=94;40:ln=31;40:so=35;40:pi=33;40:ex=92;40:bd=34;46:cd=34;43:su=0;41:sg=0;46:tw=0;42:ow=0;43:"
export EDITOR="vim"
unset SSH_ASKPASS

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# source external scripts
# source ~/.proxyon

# don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# set history length
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

