#!/bin/sh

mklnk() {
  if [ -e ~/.$1 ] && [ ! -L ~/.$1 ]; then
    cp ~/.$1 ~/.$1.org;
  fi
  ln -sf ~/dotfiles/$1 ~/.$1;
  chmod 744 ~/.$1;
}

mkdrlnk() {
  if [ -e ~/.$1 ] && [ ! -L ~/.$1 ]; then
    cp -r ~/.$1 ~/.$1.org;
  fi
  ln -nsf ~/dotfiles/$1 ~/.$1;
  chmod 744 ~/.$1;
}

mklnk vimrc
mkdrlnk vim
mklnk colorrc
mklnk bashrc
mklnk gitconfig
mklnk bash_profile
mklnk emacs.el
