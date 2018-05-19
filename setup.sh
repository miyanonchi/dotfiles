#!/bin/sh

# If you misspelled, please modify the 'gitconfig' file directly.
if [ ! -f ~/.gitconfig ]; then
  read -p "Enter your gitlab user name? (eg. takumi.miyano01) " username
  sed -e "s/YOUR_NAME/$username/g" ~/dotfiles/gitconfig.org > ~/dotfiles/gitconfig
fi

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

source ~/.bashrc
source ~/.bash_profile

echo "done."
