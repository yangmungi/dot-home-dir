#!/bin/bash

_COMMAND="cp -v"
_DHD="$HOME/dot-home-dir"

# Copy all the other ones
$_COMMAND $_DHD/vimrc         $HOME/.vimrc    2> /dev/null
$_COMMAND $_DHD/screenrc      $HOME/.screenrc 2> /dev/null
$_COMMAND $_DHD/toprc         $HOME/.toprc    2> /dev/null
$_COMMAND $_DHD/bashrc-common $HOME/.bashrc   2> /dev/null

# Art thou Linux?
ls --color > /dev/null 2> /dev/null
_LS_R=$?

# Extract bash
_BASH="linux"
if [ $_LS_R ]; then
    _BASH="unix"
fi

_BASH_FILE="bashrc-$_BASH"

echo "extending .bashrc with $_BASH_FILE"
/bin/cat $_DHD/$_BASH_FILE >> $HOME/.bashrc
