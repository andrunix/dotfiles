#!/usr/bin/env zsh

bkupdir=$HOME/.dotfilesbackup/`date +"%Y-%m-%d"`

if [ ! -d ${bkupdir} ]; then
  echo "Creating backup directory, ${bkupdir}"
  mkdir -p ${bkupdir}
fi

if [ -f $HOME/.tmux.conf ]; then
  echo "Moving tmux conf to ${bkupdir}"
  mv $HOME/.tmux.conf $bkupdir
fi
ln -sf `pwd`/tmux/.tmux.conf $HOME/.tmux.conf

if [ -f $HOME/.zshrc ]; then
  echo "Moving zshrc to ${bkupdir}"
  mv $HOME/.zshrc $bkupdir
fi
ln -sf `pwd`/zsh/.zshrc $HOME/.zshrc

if [ -f $HOME/.vimrc ]; then
  echo "Moving vimrc to ${bkupdir}"
  mv $HOME/.vimrc $bkupdir
fi
ln -sf `pwd`/vim/.vimrc $HOME/.vimrc

if [ -f $HOME/.emacs ]; then
  echo "Moving vimrc to ${bkupdir}"
  mv $HOME/.emacs $bkupdir
fi
ln -sf `pwd`/emacs/.emacs $HOME/.emacs




