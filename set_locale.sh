# set locale
sudo cat > /etc/localtime << EOF
hwclock --systohc --utc
EOF

sudo cat > /etc/locale.gen << EOF
en_US.UTF-8 UTF-8
pl_PL.UTF-8 UTF-8
EOF

sudo cat > /etc/locale.conf << EOF
LANG=en_US.UTF-8
EOF

sudo cat > /etc/vconsole.conf << EOF
KEYMAP=pl
FONT=Lat2-Terminus16.psfu.gz
FONT_MAP=8859-2
EOF

sudo locale-gen
sudo pacman -S tzdata
sudo timedatectl set-timezone Europe/Warsaw
