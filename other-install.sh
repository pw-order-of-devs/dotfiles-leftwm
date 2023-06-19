chsh -s $(which fish)

paru -S fisher-git brave-bin leftwm betterlockscreen
fisher install reitzig/sdkman-for-fish@v1.4.0

curl -sS https://starship.rs/install.sh | sh
curl -s "https://get.sdkman.io" | sh

ssh-keygen -t ed25519 -C "pawel.walus@protonmail.com"
