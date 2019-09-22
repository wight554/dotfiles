#!/bin/bash

# Line below should be added to /etc/sudoers
# wight554 ALL=(ALL) NOPASSWD: ALL

# Install yay
sudo pacman -S git go --noconfirm
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm
cd ..
rm -rf yay

# Chromium packages
yay -S chromium ttf-liberation --noconfirm

# Minimal packages setup
# alacritty is built from master
yay -S fish starship-bin alacritty-terminfo compton --noconfirm

# UI customizations
yay -S plata-theme papirus-icon-theme --noconfirm

# Fonts
yay -S ttf-fira-code ttf-dejavu noto-fonts noto-fonts-cjk noto-fonts-emoji --noconfirm

# Custom ls colors
wget https://raw.github.com/trapd00r/LS_COLORS/master/LS_COLORS -O $HOME/.dircolors

# Copy config files
cp -rf .config $HOME
