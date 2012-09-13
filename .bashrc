# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

PATH=$PATH:/usr/sbin/

# Bash Prompt
PS1='\[\e[1;33m\]\t \h:`pwd` [\!]\[\e[0;37m\]$ '

# User created aliases
alias ocd='cd ..'
alias ls='ls --color'
alias ll='ls -al'

export HISTCONTROL=ignoreboth
