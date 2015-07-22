#!/usr/bin/env zsh

bkupdir=$HOME/.dotfilesbackup

if [ ! - "$bkupdir"]; then
  mkdir $bkupdir
fi

mv $HOME/.tmux.conf $bkupdir
ln -s `pwd`/tmux/.tmux.conf $HOME/.tmux.conf

cp $HOME/.zshrc $bkupdir
ln -s `pwd`/zsh/.zshrc $HOME/.zshrc


