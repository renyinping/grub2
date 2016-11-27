::bcdedit /create /d "GRUB2 (\grub2\gr2ldr.i386-pc)" /application BOOTSECTOR > id.txt
for /f "tokens=2" %i in (id.txt) do set myid=%i
echo %myid%
bcdedit /displayorder %myid% /addlast
bcdedit /set %myid% device boot
bcdedit /set %myid% path \grub2\gr2ldr.i386-pc
bcdedit /timeout 5
