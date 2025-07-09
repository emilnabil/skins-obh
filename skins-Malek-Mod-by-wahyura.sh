#!/bin/bash

echo "Removing previous version of malek-mod-by-wahyura-FHD..."
sleep 2

# إزالة النسخة القديمة إذا كانت موجودة
if [ -d /usr/share/enigma2/Malek-Mod ]; then
    rm -rf /usr/share/enigma2/Malek-Mod > /dev/null 2>&1
    echo "Package removed."
else
    echo "No previous version found."
fi

echo ""
echo "Installing required package: curl"
opkg install curl > /dev/null 2>&1
sleep 2

# تحميل الحزمة وتثبيتها
cd /tmp || exit 1

echo "Downloading skin package..."
curl -kL "https://dreambox4u.com/emilnabil237/skins/skins-aglare-fhd.tar.gz" -o /tmp/malek-mod-by-wahyura.tar.gz
if [ $? -ne 0 ]; then
    echo "Download failed!"
    exit 1
fi

echo "Installing package..."
tar -xzf /tmp/malek-mod-by-wahyura.tar.gz -C /
sleep 1

echo "Cleaning up..."
rm -f /tmp/malek-mod-by-wahyura.tar.gz

echo ""
echo ">>>>>>>>>>>>>>>>> DONE <<<<<<<<<<<<<<<<<"
sleep 2
exit 0


