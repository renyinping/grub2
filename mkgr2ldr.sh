# /bin/sh

grub-mkimage -o i386-pc-core.img -c embed.cfg -O i386-pc biosdisk part_msdos ext2 fat exfat ntfs search_fs_file
cp -r /usr/lib/grub/i386-pc .
cat i386-pc/lnxboot.img > gr2ldr.i386-pc
cat i386-pc-core.img   >> gr2ldr.i386-pc

