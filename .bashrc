# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

if [ `type -t __git_ps1` ]; then
    GITPS1='`__git_ps1`'
fi

# Bash Prompt
PSCUSTOM='\[\e[1;33m\]\t \u@\h:`pwd`'$GITPS1' [\!]\[\e[0m\]'
# Bash Prompt Primary
PS1=$PSCUSTOM'\n'$PSLS'\$ '
# Bash Prompt Secondary
PS2='> '
#PS2=$PSCUSTOM'`shell_history_number_string_length` > '

# User created aliases
alias ocd='cd ..'
alias ls='ls --color'
alias ll='ls -al'

export HISTCONTROL=ignoreboth
export HISTIGNORE="&:clear:l[ls]:[bf]g:exit"

PATH=$PATH:/usr/sbin/
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
