#!/bin/bash
#
echo "MAKE SURE SUDO IS CONFIGURED!!!!"
echo "READY TO INSTALL | PRESS ENTER"
read ready

mkdir -p ~/Documents
mkdir -p ~/Downloads
mkdir -p ~/Pictures/Screenshots
mkdir ~/.config

pkgs=(sway wl-clipboard xdg-desktop-portal-wlr vim plocate thunar htop fastfetch pavucontrol git wofi firefox-esr mpv grim slurp dunst waybar fonts-font-awesome pipewire wireplumber pipewire-pulse alacritty brightnessctl)

sudo apt update
sudo apt-get -y --ignore-missing install "${pkgs[@]}"

ln -sf ~/sway_debian_dotfiles/dotfiles/config/sway ~/.config/sway
ln -sf ~/sway_debian_dotfiles/dotfiles/config/dunst ~/.config/dunst
ln -sf ~/sway_debian_dotfiles/dotfiles/config/wofi ~/.config/wofi
ln -sf ~/sway_debian_dotfiles/dotfiles/config/waybar ~/.config/waybar
ln -sf ~/sway_debian_dotfiles/dotfiles/config/alacritty ~/.config/alacritty

systemctl --user --now enable wireplumber.service
echo "SETUP COMPLETE, PLEASE REBOOT"

####


