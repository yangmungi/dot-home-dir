# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Use to display git branch for current WD
#function parse_git_branch() {
#   /usr/bin/git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/\* \(.*\)/\1/'
#}

# Use to make git branch display pretty
#function shell_parse_git_branch() {
#    branch_str=`parse_git_branch`
#    if [ -n "$branch_str" ]
#    then
#        echo "($branch_str) "
#    fi
#}

# Determine the length of the \! PS1 expansion
#function history_number_string_length() {
#    history | tail -n1 | /usr/bin/awk '{ print length($1) }'
#}

# Print that with spaces
#function shell_history_number_string_length() {
#    history_number_string_length |  /usr/bin/awk '{ printf "%-0"$0"s", "" }'
#}

#if [ `tput cols` ]; then
#    COLS=`tput cols`
#    PSLS='`ls -x -w'$COLS'`\n'
#fi

if [ `type -t __git_ps1` ]; then
    GITPS1='`__git_ps1`'
fi

# Bash Prompt
PSCUSTOM='\[\e[1;33m\]\t \u@\h:`pwd`'$GITPS1' [\!]\[\e[0;37m\]'
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
