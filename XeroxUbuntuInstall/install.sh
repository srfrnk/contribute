apt-get update
apt-get install sudo
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install curl rpm cpio

mkdir 6128MFP_Linux
cd 6128MFP_Linux
curl -o 6128MFP_Linux.tar -J -L https://github.com/srfrnk/contribute/raw/master/XeroxUbuntuInstall/6128MFP_Linux.tar
tar -xf 6128MFP_Linux.tar
cd 6128MFP_Linux/English
rpm2cpio Xerox-Phaser-6128MFP-1.0-1.i386.rpm | cpio -idmv
sudo cp -r ./usr/. /usr

sudo chmod 755 /usr/lib/cups/filter/Xerox_Phaser_6128MFP/
sudo chown root -hR /usr/lib/cups
sudo chgrp root -hR /usr/lib/cups
sudo chown root -hR /usr/share/cups
sudo chgrp root -hR /usr/share/cups

sudo dpkg --add-architecture i386
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install lib32stdc++6 libcupsimage2:i386

sudo /etc/init.d/cups restart
