# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored
zstyle :compinstall filename '/home/yangmungi/.zshrc'

autoload -Uz compinit && compinit

# History
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=20000
setopt appendhistory notify
bindkey -e

setopt HIST_IGNORE_DUPS

# Dir Stack
DIRSTACKSIZE=8
setopt autopushd pushdminus pushdsilent pushdtohome

# Other Plugins
autoload -U promptinit && promptinit
autoload -U colors && colors
autoload -Uz select-word-style && select-word-style bash

# Aliases
alias ls="ls --color=auto"
alias ll="ls -l"

# Prompt
PROMPT="%{$fg_no_bold[yellow]%}[%D{%y-%m-%d %H:%M:%S}]%{$fg_no_bold[green]%} %n@%M:%~ %{$reset_color%}%# "

# Defaults
export EDITOR=/usr/bin/vim

export PATH=$PATH:~/.cabal/bin
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
[[ -s "$HOME/.gvm/scripts/gvm" ]] && source "$HOME/.gvm/scripts/gvm"
