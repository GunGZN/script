# download script
cd /usr/bin
wget -O menu "https://raw.githubusercontent.com/Bankzza555666/script/main/menu.sh"
wget -O m "https://raw.githubusercontent.com/Bankzza555666/script/main/menu.sh"
wget -O web "https://raw.githubusercontent.com/Bankzza555666/script/main/webmin.sh"
wget -O rootpass "https://raw.githubusercontent.com/Bankzza555666/script/main/rootpass.sh"
wget -O changeport "https://raw.githubusercontent.com/Bankzza555666/script/main/changeport.sh"
wget -O up "https://raw.githubusercontent.com/Bankzza555666/script/main/up.sh"
wget -O backup "https://raw.githubusercontent.com/Bankzza555666/script/main/backup.sh"
chmod +x backup
chmod +x m
chmod +x up
chmod +x menu
chmod +x 1
chmod +x 6
chmod +x 5
chmod +x 3
chmod +x 4
chmod +x 9
chmod +x speedtest
chmod +x info
chmod +x 7
chmod +x tendang
chmod +x 8
chmod +x ram
chmod +x 2
chmod +x clear-log
chmod +x port
chmod +x port-ovpn
chmod +x port-ssl
chmod +x port-tr
chmod +x port-squid
chmod +x port-ws
chmod +x port-vless
chmod +x web
chmod +x rootpass
chmod +x changeport
echo "0 5 * * * root clear-log && reboot" >> /etc/crontab
echo "0 0 * * * root xp" >> /etc/crontab
menu
