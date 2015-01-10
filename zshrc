# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored
zstyle :compinstall filename '/home/yangmungi/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=20000
setopt appendhistory notify
bindkey -e
# End of lines configured by zsh-newuser-install

setopt HIST_IGNORE_DUPS

autoload -U promptinit
promptinit

autoload -U colors
colors

alias ls="ls --color=auto"
alias ll="ls -l"

PROMPT="%{$fg_no_bold[blue]%}[%D{%y-%m-%d %H:%M:%S}] %n@%M:%~ %{$reset_color%}%# "
