#!/bin/bash
if [ -a $HOME/dot-home-dir/bashrc-append.sh ]; then
    if [ -z "$(grep dot-home-dir $HOME/.bashrc)" ]; then
        /bin/cat $HOME/dot-home-dir/bashrc-append.sh >> $HOME/.bashrc
    fi

    ln -s $HOME/dot-home-dir/.vimrc     $HOME/.vimrc    2> /dev/null
    ln -s $HOME/dot-home-dir/.screenrc  $HOME/.screenrc 2> /dev/null
    ln -s $HOME/dot-home-dir/.toprc     $HOME/.toprc    2> /dev/null
fi

