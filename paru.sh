# install paru
cd /tmp
git clone https://aur.archlinux.org/paru
cd paru
makepkg -si

cd /tmp
rm -rf paru
