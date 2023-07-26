# install tools 
paru -S fisher-git brave-bin leftwm betterlockscreen jetbrains-toolbox
# install fonts
paru -S noto-fonts noto-fonts-cjk noto-fonts-emoji noto-fonts-extra nerd-fonts-git ttf-jetbrains-mono
# install icon theme
paru -S papirus-icon-theme
# install cursor
paru -S xcursor-arch-cursor-complete

# fisher
fisher install reitzig/sdkman-for-fish@v1.4.0

# starship
curl -sS https://starship.rs/install.sh | sh

# sdkman
curl -s "https://get.sdkman.io" | sh

cat > /usr/share/icons/default/index.theme << EOF 
[Icon Theme]
Inherits=Papirus-Dark,ArchCursorComplete
EOF

# fish configuration
chsh -s $(which fish)

# generate ssh key
ssh-keygen -t ed25519 -C "pawel.walus@protonmail.com"

systemctl enable --now ly
systemctl enable --now NetworkManager
