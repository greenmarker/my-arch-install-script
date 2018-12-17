#!/bin/bash

echo loadkeys pl
loadkeys pl

echo setfont Lat2-Terminus16.psfu.gz -m 8859-2
setfont Lat2-Terminus16.psfu.gz -m 8859-2

pacman -Sy r8168,grub,pacman-contrib --noconfirm

#mount /dev/sda3 /mnt
#mkdir /mnt/efi
#mount /dev/sda1 /efi

echo rankmirrors
mv /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.backup
echo '##' >> /etc/pacman.d/mirrorlist
echo '## Arch Linux repository mirrorlist' > /etc/pacman.d/mirrorlist
echo '## Generated on 2018-12-17' > /etc/pacman.d/mirrorlist
echo '##' > /etc/pacman.d/mirrorlist
echo ''
echo '## Poland' > /etc/pacman.d/mirrorlist
echo '#Server = http://arch.midov.pl/arch/$repo/os/$arch' > /etc/pacman.d/mirrorlist
echo '#Server = http://mirror.onet.pl/pub/mirrors/archlinux/$repo/os/$arch' > /etc/pacman.d/mirrorlist
echo '#Server = http://piotrkosoft.net/pub/mirrors/ftp.archlinux.org/$repo/os/$arch' > /etc/pacman.d/mirrorlist
echo '#Server = http://ftp.vectranet.pl/archlinux/$repo/os/$arch' > /etc/pacman.d/mirrorlist
