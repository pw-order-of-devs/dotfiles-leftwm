# install base packages
pacman -S openssh git vim neovim wget curl ly feh picom polybar conky bluez bluez-utils connman dunst libnotify zip unzip alacritty rofi fish rustup jetbrains-toolbox network-manager-applet pavucontrol
# install fonts
pacman -S noto-fonts noto-fonts-cjk noto-fonts-emoji noto-fonts-extra nerd-fonts-git ttf-jetbrains-mono
# initialize rustup config
rustup default stable
