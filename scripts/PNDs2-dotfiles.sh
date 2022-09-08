#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "run me with sudo"
  exit
fi

echo "pls wait i have to check"

dnf install git && clear

echo "first step switch to wm / read i3 wiki"

echo "lets make it"

dnf install i3-gaps rofi nitrogen picom

git clone https://github.com/zobbx/PNDOs.git 

echo "go to the dotfiles folder in the pndos folder and move everything in it to the .config"
