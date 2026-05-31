#!/bin/bash
##command=wget -q "--no-check-certificate" https://github.com/emilnabil/skins-obh/raw/refs/heads/main/BlackShadow_X2P_OBH_5.0.sh -O - | /bin/sh
##################
echo "Removing previous version ..."
sleep 2

# Check if the directory exists before removing it
if [ -d /usr/share/enigma2/BlackShadow_X2P ]; then
    rm -rf /usr/share/enigma2/BlackShadow_X2P > /dev/null 2>&1
    echo 'Package removed.'
else
    echo "You do not have previous version"
fi

echo ""
opkg install enigma2-plugin-extensions-bitrate enigma2-plugin-extensions-oaweather
opkg install curl
sleep 2

# Download and extract the package
cd /tmp || exit
curl -k -Lbk -m 55532 -m 555104 "https://github.com/emilnabil/skins-obh/raw/refs/heads/main/BlackShadow_X2P_OBH_5.0.tgz" -o /tmp/BlackShadow_X2P_OBH_5.0.tgz
sleep 1
echo "Installing ...."
tar -xzf /tmp/BlackShadow_X2P_OBH_5.0.tgz -C /
echo ""
echo ""
sleep 1
rm -f /tmp/BlackShadow_X2P_OBH_5.0.tgz

sleep 2
exit 0








