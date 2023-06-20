# install base packages
pacman -S openssh git vim neovim wget curl ly feh picom polybar conky bluez bluez-utils connman dunst libnotify zip unzip alacritty rofi fish rustup jetbrains-toolbox pavucontrol inetutils polkit
# install fonts
pacman -S noto-fonts noto-fonts-cjk noto-fonts-emoji noto-fonts-extra nerd-fonts-git ttf-jetbrains-mono
# initialize rustup config
rustup default stable

cd tmp
git clone https://aur.archlinux.org/paru
cd paru
makepkg -si

chsh -s $(which fish)

paru -S fisher-git brave-bin leftwm betterlockscreen
fisher install reitzig/sdkman-for-fish@v1.4.0

curl -sS https://starship.rs/install.sh | sh
curl -s "https://get.sdkman.io" | sh

ssh-keygen -t ed25519 -C "pawel.walus@protonmail.com"
