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

# Set git configs
git config --global user.email "wight554@gmail.com"
git config --global user.name "Volodymyr Zhdanov"

# Chromium packages
yay -S chromium ttf-liberation --noconfirm

# Minimal packages setup
yay -S fish starship-bin alacritty compton --noconfirm

# UI customizations
yay -S plata-theme papirus-icon-theme --noconfirm

# Fonts
yay -S ttf-fira-code ttf-dejavu noto-fonts noto-fonts-cjk noto-fonts-emoji --noconfirm

# Replace alacritty with custom package
wget https://github.com/wight554/alacritty/releases/download/untagged-8f3f74a594ddea869359/Alacritty-16ba9da-ubuntu_18_04_amd64.tar.gz -O alacritty.tar.gz
tar -xvf alacritty.tar.gz
sudo install -D -m755 alacritty /usr/bin/alacritty

# Custom ls colors
wget https://raw.github.com/trapd00r/LS_COLORS/master/LS_COLORS -O $HOME/.dircolors

# Copy config files
cp -rf .config $HOME
