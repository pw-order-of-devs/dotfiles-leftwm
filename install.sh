# set locale
timedatectl set-timezone Europe/Warsaw

cat > /etc/localtime << EOF
hwclock --systohc --utc
EOF

cat > /etc/locale.gen << EOF
en_US.UTF-8 UTF-8
pl_PL.UTF-8 UTF-8
EOF

locale-gen

cat > /etc/locale.conf << EOF
LANG=en_US.UTF-8
EOF

cat > /etc/vconsole.conf << EOF
KEYMAP=pl
FONT=Lat2-Terminus16.psfu.gz
FONT_MAP=8859-2
EOF

# install base packages
pacman -S openssh git vim neovim wget curl ly feh picom polybar conky bluez bluez-utils connman dunst libnotify zip unzip alacritty rofi fish rustup jetbrains-toolbox pavucontrol inetutils polkit arc-gtk-theme
# install fonts
pacman -S noto-fonts noto-fonts-cjk noto-fonts-emoji noto-fonts-extra nerd-fonts-git ttf-jetbrains-mono
# initialize rustup config
rustup default stable

# install paru
cd tmp
git clone https://aur.archlinux.org/paru
cd paru
makepkg -si

# fish configuration
chsh -s $(which fish)

paru -S fisher-git brave-bin leftwm betterlockscreen
fisher install reitzig/sdkman-for-fish@v1.4.0

# starship
curl -sS https://starship.rs/install.sh | sh

# sdkman
curl -s "https://get.sdkman.io" | sh

# generate ssh key
ssh-keygen -t ed25519 -C "pawel.walus@protonmail.com"
