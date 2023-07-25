# install essential packages
sudo pacman -Syyuu
sudo pacman -S openssh git vim neovim alacritty wget curl ly feh picom polybar conky bluez bluez-utils connman dunst libnotify zip unzip fish pavucontrol inetutils polkit network-manager-applet arc-gtk-theme rofi rustup
# initialize rustup config
rustup default stable

# install paru
cd /tmp
git clone https://aur.archlinux.org/paru
cd paru
makepkg -si

cd /tmp
rm -rf paru

# install fonts
paru -S jetbrains-toolbox
# install fonts
paru -S noto-fonts noto-fonts-cjk noto-fonts-emoji noto-fonts-extra nerd-fonts-git ttf-jetbrains-mono
# install icon theme
paru -S papirus-icon-theme

paru -S fisher-git brave-bin leftwm betterlockscreen
fisher install reitzig/sdkman-for-fish@v1.4.0

# install cursor
paru -S xcursor-arch-cursor-complete

# starship
curl -sS https://starship.rs/install.sh | sh

# sdkman
curl -s "https://get.sdkman.io" | sh

cat > /usr/share/icons/default/index.theme << EOF                                                                                                                                                                     ✔  at 01:35:05 PM 
[Icon Theme]
Inherits=Papirus-Dark,ArchCursorComplete
EOF

# fish configuration
chsh -s $(which fish)

# generate ssh key
ssh-keygen -t ed25519 -C "pawel.walus@protonmail.com"

systemctl enable --now ly
systemctl enable --now NetworkManager
