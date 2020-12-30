#!/bin/env bash

# INSTALL MAIN PACKAGES

## EDITORS
## vim-gtk3 -> because it is compiled with almost all the features
## nvim -> neovim states to improve vim...let's try
sudo apt-get install vim-gtk3
sudo apt-get install nvim

## sublime3
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text
sudo apt-get install sublime-merge

## PROGRAMMING TOOLS

## git
sudo apt-get install git
sudo apt-get install git-gui
git config --global user.name "Luca Bonato"
git config --global user.email lohathe@gmail.com
git config --global core.editor nvim
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status
git config --global alias.lg "log --all --graph --abbrev-commit --date=relative"
git config --global alias.lol "log --pretty=oneline --abbrev-commit --graph --decorate"
git config --global format.pretty "%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset"
## tmux
sudo apt-get install tmux
## compilers etc
sudo apt-get install gcc
sudo apt-get install make
sudo apt-get install cmake
suto apt-get install ipython3
## golang
## rust


## UTILTIES

## system monitor applet
sudo apt install gir1.2-gtop-2.0 gir1.2-nm-1.0 gir1.2-clutter-1.0
sudo apt install gettext
mkdir -p temp
cd temp
git clone git://github.com/paradoxxxzero/gnome-shell-system-monitor-applet.git
cd gnome-shell-system-monitor-applet
make install
cd ../..
rm -r temp
gnome-extensions enable system-monitor@paradoxxx.zero.gmail.com 
## update bashrc
cat improve_bashrc >> $HOME/.bashrc
