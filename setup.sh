#!/usr/bin/env zsh

bkupdir=$HOME/.dotfilesbackup/`date +"%Y-%m-%d"`

if [ ! -d ${bkupdir} ]; then
  echo "Creating backup directory, ${bkupdir}"
  mkdir ${bkupdir}
fi

if [ -f $HOME/.tmux.conf ]; then
  echo "Moving tmux conf to ${bkupdir}"
  mv $HOME/.tmux.conf $bkupdir
fi
ln -shf `pwd`/tmux/.tmux.conf $HOME/.tmux.conf

if [ -f $HOME/.zshrc ]; then
  echo "Moving zshrc to ${bkupdir}"
  mv $HOME/.zshrc $bkupdir
fi
ln -s `pwd`/zsh/.zshrc $HOME/.zshrc


