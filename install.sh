#!/bin/bash

# booting: F2 or DEL to enter "BIOS", F8 to go to boot menu, select "UEFI: pendrive"

loadkeys pl
setfont Lat2-Terminus16.psfu.gz -m 8859-2
timedatectl set-ntp true

## Formatting
# echo Formatting ESP partition
# mkfs.vfat -F 32 /dev/sda1
# echo Formatting Swap partition
# mkswap /dev/sda2
# echo Formatting Data partition
# mkfs.btrfs /dev/sda3

echo Mounting partitions
swapon /dev/sda2
mount /dev/sda3 /mnt
mkdir /mnt/boot
mount /dev/sda1 /mnt/boot

echo rankmirrors
mv /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.backup
echo '##' > /etc/pacman.d/mirrorlist
echo '## Arch Linux repository mirrorlist' >> /etc/pacman.d/mirrorlist
echo '## Generated on 2018-12-17' >> /etc/pacman.d/mirrorlist
echo '##' >> /etc/pacman.d/mirrorlist
echo '' >> /etc/pacman.d/mirrorlist
echo '## Poland' >> /etc/pacman.d/mirrorlist
echo 'Server = http://arch.midov.pl/arch/$repo/os/$arch' >> /etc/pacman.d/mirrorlist
echo 'Server = http://mirror.onet.pl/pub/mirrors/archlinux/$repo/os/$arch' >> /etc/pacman.d/mirrorlist
echo 'Server = http://piotrkosoft.net/pub/mirrors/ftp.archlinux.org/$repo/os/$arch' >> /etc/pacman.d/mirrorlist
echo 'Server = http://ftp.vectranet.pl/archlinux/$repo/os/$arch' >> /etc/pacman.d/mirrorlist
echo '' >> /etc/pacman.d/mirrorlist
echo '## Germany' >> /etc/pacman.d/mirrorlist
echo 'Server = http://mirror.23media.de/archlinux/$repo/os/$arch' >> /etc/pacman.d/mirrorlist
echo 'Server = https://appuals.com/archlinux/$repo/os/$arch' >> /etc/pacman.d/mirrorlist
echo 'Server = http://artfiles.org/archlinux.org/$repo/os/$arch' >> /etc/pacman.d/mirrorlist
echo 'Server = https://mirror.bethselamin.de/$repo/os/$arch' >> /etc/pacman.d/mirrorlist
echo 'Server = http://mirror.checkdomain.de/archlinux/$repo/os/$arch' >> /etc/pacman.d/mirrorlist
echo 'Server = https://mirror.checkdomain.de/archlinux/$repo/os/$arch' >> /etc/pacman.d/mirrorlist
echo 'Server = http://arch.eckner.net/archlinux/$repo/os/$arch' >> /etc/pacman.d/mirrorlist
echo 'Server = https://arch.eckner.net/archlinux/$repo/os/$arch' >> /etc/pacman.d/mirrorlist
echo 'Server = http://mirror.f4st.host/archlinux/$repo/os/$arch' >> /etc/pacman.d/mirrorlist
echo 'Server = https://mirror.f4st.host/archlinux/$repo/os/$arch' >> /etc/pacman.d/mirrorlist
echo 'Server = http://ftp.fau.de/archlinux/$repo/os/$arch' >> /etc/pacman.d/mirrorlist
echo 'Server = https://ftp.fau.de/archlinux/$repo/os/$arch' >> /etc/pacman.d/mirrorlist
echo 'Server = https://dist-mirror.fem.tu-ilmenau.de/archlinux/$repo/os/$arch' >> /etc/pacman.d/mirrorlist
echo 'Server = https://mirror.gnomus.de/$repo/os/$arch' >> /etc/pacman.d/mirrorlist
echo 'Server = http://www.gutscheindrache.com/mirror/archlinux/$repo/os/$arch' >> /etc/pacman.d/mirrorlist
echo 'Server = http://ftp.gwdg.de/pub/linux/archlinux/$repo/os/$arch' >> /etc/pacman.d/mirrorlist
echo 'Server = http://mirror.hactar.xyz/$repo/os/$arch' >> /etc/pacman.d/mirrorlist
echo 'Server = https://mirror.hactar.xyz/$repo/os/$arch' >> /etc/pacman.d/mirrorlist
echo 'Server = http://archlinux.honkgong.info/$repo/os/$arch' >> /etc/pacman.d/mirrorlist
echo 'Server = http://ftp.hosteurope.de/mirror/ftp.archlinux.org/$repo/os/$arch' >> /etc/pacman.d/mirrorlist
echo 'Server = http://ftp-stud.hs-esslingen.de/pub/Mirrors/archlinux/$repo/os/$arch' >> /etc/pacman.d/mirrorlist
echo 'Server = http://archlinux.mirror.iphh.net/$repo/os/$arch' >> /etc/pacman.d/mirrorlist
echo 'Server = http://repo.itmettke.de/archlinux/$repo/os/$arch' >> /etc/pacman.d/mirrorlist
echo 'Server = https://repo.itmettke.de/archlinux/$repo/os/$arch' >> /etc/pacman.d/mirrorlist
echo 'Server = http://arch.jensgutermuth.de/$repo/os/$arch' >> /etc/pacman.d/mirrorlist
echo 'Server = https://arch.jensgutermuth.de/$repo/os/$arch' >> /etc/pacman.d/mirrorlist
echo 'Server = http://k42.ch/mirror/archlinux/$repo/os/$arch' >> /etc/pacman.d/mirrorlist
echo 'Server = https://k42.ch/mirror/archlinux/$repo/os/$arch' >> /etc/pacman.d/mirrorlist
echo 'Server = https://archlinux.layer8.fail/$repo/os/$arch' >> /etc/pacman.d/mirrorlist
echo 'Server = http://mirror.fra10.de.leaseweb.net/archlinux/$repo/os/$arch' >> /etc/pacman.d/mirrorlist
echo 'Server = https://mirror.fra10.de.leaseweb.net/archlinux/$repo/os/$arch' >> /etc/pacman.d/mirrorlist
echo 'Server = http://mirror.metalgamer.eu/archlinux/$repo/os/$arch' >> /etc/pacman.d/mirrorlist
echo 'Server = https://mirror.metalgamer.eu/archlinux/$repo/os/$arch' >> /etc/pacman.d/mirrorlist
echo 'Server = http://mirrors.n-ix.net/archlinux/$repo/os/$arch' >> /etc/pacman.d/mirrorlist
echo 'Server = https://mirrors.n-ix.net/archlinux/$repo/os/$arch' >> /etc/pacman.d/mirrorlist
echo 'Server = http://mirror.netcologne.de/archlinux/$repo/os/$arch' >> /etc/pacman.d/mirrorlist
echo 'Server = https://mirror.netcologne.de/archlinux/$repo/os/$arch' >> /etc/pacman.d/mirrorlist
echo 'Server = http://mirrors.niyawe.de/archlinux/$repo/os/$arch' >> /etc/pacman.d/mirrorlist
echo 'Server = https://mirrors.niyawe.de/archlinux/$repo/os/$arch' >> /etc/pacman.d/mirrorlist
echo 'Server = http://archlinux.nullpointer.io/$repo/os/$arch' >> /etc/pacman.d/mirrorlist
echo 'Server = https://archlinux.nullpointer.io/$repo/os/$arch' >> /etc/pacman.d/mirrorlist
echo 'Server = http://mirror.orbit-os.com/archlinux/$repo/os/$arch' >> /etc/pacman.d/mirrorlist
echo 'Server = https://mirror.orbit-os.com/archlinux/$repo/os/$arch' >> /etc/pacman.d/mirrorlist
echo 'Server = http://packages.oth-regensburg.de/archlinux/$repo/os/$arch' >> /etc/pacman.d/mirrorlist
echo 'Server = https://packages.oth-regensburg.de/archlinux/$repo/os/$arch' >> /etc/pacman.d/mirrorlist
echo 'Server = http://mirror.pseudoform.org/$repo/os/$arch' >> /etc/pacman.d/mirrorlist
echo 'Server = https://mirror.pseudoform.org/$repo/os/$arch' >> /etc/pacman.d/mirrorlist
echo 'Server = https://www.ratenzahlung.de/mirror/archlinux/$repo/os/$arch' >> /etc/pacman.d/mirrorlist
echo 'Server = http://ftp.halifax.rwth-aachen.de/archlinux/$repo/os/$arch' >> /etc/pacman.d/mirrorlist
echo 'Server = https://ftp.halifax.rwth-aachen.de/archlinux/$repo/os/$arch' >> /etc/pacman.d/mirrorlist
echo 'Server = http://linux.rz.rub.de/archlinux/$repo/os/$arch' >> /etc/pacman.d/mirrorlist
echo 'Server = http://mirror.selfnet.de/archlinux/$repo/os/$arch' >> /etc/pacman.d/mirrorlist
echo 'Server = http://ftp.spline.inf.fu-berlin.de/mirrors/archlinux/$repo/os/$arch' >> /etc/pacman.d/mirrorlist
echo 'Server = https://ftp.spline.inf.fu-berlin.de/mirrors/archlinux/$repo/os/$arch' >> /etc/pacman.d/mirrorlist
echo 'Server = http://archlinux.thaller.ws/$repo/os/$arch' >> /etc/pacman.d/mirrorlist
echo 'Server = https://archlinux.thaller.ws/$repo/os/$arch' >> /etc/pacman.d/mirrorlist
echo 'Server = http://mirror.thomaskilian.net/archlinux/$repo/os/$arch' >> /etc/pacman.d/mirrorlist
echo 'Server = https://mirror.thomaskilian.net/archlinux/$repo/os/$arch' >> /etc/pacman.d/mirrorlist
echo 'Server = http://ftp.tu-chemnitz.de/pub/linux/archlinux/$repo/os/$arch' >> /etc/pacman.d/mirrorlist
echo 'Server = http://mirror.ubrco.de/archlinux/$repo/os/$arch' >> /etc/pacman.d/mirrorlist
echo 'Server = https://mirror.ubrco.de/archlinux/$repo/os/$arch' >> /etc/pacman.d/mirrorlist
echo 'Server = http://ftp.uni-bayreuth.de/linux/archlinux/$repo/os/$arch' >> /etc/pacman.d/mirrorlist
echo 'Server = http://ftp.uni-hannover.de/archlinux/$repo/os/$arch' >> /etc/pacman.d/mirrorlist
echo 'Server = http://ftp.uni-kl.de/pub/linux/archlinux/$repo/os/$arch' >> /etc/pacman.d/mirrorlist
echo 'Server = http://mirror.united-gameserver.de/archlinux/$repo/os/$arch' >> /etc/pacman.d/mirrorlist
echo 'Server = http://arch.unixpeople.org/$repo/os/$arch' >> /etc/pacman.d/mirrorlist
echo 'Server = http://ftp.wrz.de/pub/archlinux/$repo/os/$arch' >> /etc/pacman.d/mirrorlist
echo 'Server = https://ftp.wrz.de/pub/archlinux/$repo/os/$arch' >> /etc/pacman.d/mirrorlist
pacman -Syy

pacman -Sy nano intel-ucode --noconfirm --needed

# efivar --list
# pacman -Sy r8168,grub,pacman-contrib --noconfirm

# pacstrap /mnt base base-devel
## When internet connection is poor and pacstrap can't download all packages in the first pass, let it finish & run it again.
## pacstrap /mnt base base-devel --needed

# genfstab -U /mnt >> /mnt/etc/fstab




##################################################################################################
#arch-chroot /mnt
#ln -sf /usr/share/zoneinfo/Europe/Warsaw /etc/localtime
#hwclock --systohc

#echo Writing /etc/pacman.d/hooks/systemd-boot.hook
#echo '[Trigger]' > /etc/pacman.d/hooks/systemd-boot.hook
#echo 'Type = Package' >> /etc/pacman.d/hooks/systemd-boot.hook
#echo 'Operation = Upgrade' >> /etc/pacman.d/hooks/systemd-boot.hook
#echo 'Target = systemd' >> /etc/pacman.d/hooks/systemd-boot.hook
#echo '' >> /etc/pacman.d/hooks/systemd-boot.hook
#echo '[Action]' >> /etc/pacman.d/hooks/systemd-boot.hook
#echo 'Description = Updating systemd-boot' >> /etc/pacman.d/hooks/systemd-boot.hook
#echo 'When = PostTransaction' >> /etc/pacman.d/hooks/systemd-boot.hook
#echo 'Exec = /usr/bin/bootctl update' >> /etc/pacman.d/hooks/systemd-boot.hook
