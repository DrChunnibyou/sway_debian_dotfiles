#!/bin/bash
#
echo "MAKE SURE SUDO IS CONFIGURED!!!!"
echo "READY TO INSTALL[y/n]?"
read ready
#if [ $ready = "y" ]; then

mkdir -p ~/Documents
mkdir -p ~/Downloads
mkdir -p ~/Pictures/Screenshots
mkdir ~/.config

pkgs=(sway plocate thunar htop neofetch pavucontrol git wofi firefox-esr mpv grim slurp dunst waybar fonts-font-awesome pipewire wireplumber pipewire-pulse alacritty brightnessctl)

sudo apt update
sudo apt-get -y --ignore-missing install "${pkgs[@]}"

ln -sf ~/dotfiles/config/sway ~/.config/sway
ln -sf ~/dotfiles/config/dusnt ~/.config/dunst
ln -sf ~/dotfiles/config/wofi ~/.config/wofi
ln -sf ~/dotfiles/config/waybar ~/.config/waybar
#ln -sf ~/.dotiles/.config/alacritty ~/.config/alacritty
cp ~/dotfiles/config/alacritty/alacritty.yml ~/.config/

systemctl --user --now enable wireplumber.service
echo "SETUP COMPLETE"

#echo "READY TO REBOOT?[y/n] "
#read choice
#
#if [ $choice = "y" ]; then
#	sudo reboot
#else
#	echo "Idfk what you said, try again[y/n]"
#fi 




