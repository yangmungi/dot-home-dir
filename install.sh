#!/bin/bash
if [ -a $HOME/dot-home-dir/bashrc-append.sh ]; then
    /bin/cat $HOME/dot-home-dir/bashrc-append.sh >> $HOME/.bashrc
fi
