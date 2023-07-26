# install essential packages
sudo pacman -Syyuu
sudo pacman -S openssh git vim neovim alacritty \
wget curl ly feh picom polybar conky \
bluez bluez-utils connman dunst libnotify \
zip unzip fish pavucontrol inetutils polkit \
network-manager-applet arc-gtk-theme rofi rustup

# initialize rustup config
rustup default stable
