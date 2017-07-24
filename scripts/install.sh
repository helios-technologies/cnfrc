#!/usr/bin/bash

cd $HOME

if ! [ -d "$HOME/.cnfrc" ]; then
  git clone https://github.com/helios-technologies/cnfrc.git .cnfrc
fi

LIST="xprofile Xresources gitconfig zshrc zshrc.local"

for file in $LIST
do
  ln -sf .cnfrc/${file} ".${file}"
done

sudo pacman --noconfirm -S ttf-dejavu autocutsel dex wmname rxvt-unicode
