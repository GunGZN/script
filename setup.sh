#!/bin/bash
if [ -f "/etc/v2ray/domain" ]; then
echo " the script already installed"
exit 0
fi
mkdir /etc/v2ray
mkdir /var/lib/premium-script;
clear
echo "กรุณาใส่โดเมน"
read -p "Hostname / Domain: " host
echo "IP=$host" >> /var/lib/premium-script/ipvps.conf
echo "$host" >> /etc/v2ray/domain
wget https://raw.githubusercontent.com/Bankzza555666/script/main/ins-vt.sh && chmod +x ins-vt.sh && screen -S v2ray ./ins-vt.sh
rm -f /root/ins-vt.sh
history -c
echo "1.2" > /home/ver
clear
echo " "
echo " ติดตั้งสำเร็จแล้ว"
echo " "
echo "=================================-พรีเมี่ยมสคริป-===========================" | tee -a log-install.txt
echo "" | tee -a log-install.txt
echo "--------------------------------------------------------------------------------" | tee -a log-install.txt

echo "--------------------------สคริปโดย SP VPN-TH ------------------------" | tee -a log-install.txt
echo ""
echo " อย่าลืมรีบูตด้วยเด้อ " 
sleep 10
rm -f setup.sh


