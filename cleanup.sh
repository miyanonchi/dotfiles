#!/bin/bash

rmlnk() {
  rm ~/.$1
  if [ -e ~/.$1.org ]; then
    mv ~/.$1.org ~/.$1
  fi
}

rmlnk vimrc
rmlnk vim
rmlnk colorrc
rmlnk bashrc
rmlnk gitconfig
rmlnk bash_profile
rmlnk emacs.el

