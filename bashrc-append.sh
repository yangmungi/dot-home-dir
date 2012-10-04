if [ -f $HOME/dot-home-dir/.bashrc ]; then
    . $HOME/dot-home-dir/.bashrc
    ln -s $HOME/dot-home-dir/.vimrc 2> /dev/null
    ln -s $HOME/dot-home-dir/.screenrc 2> /dev/null
fi
