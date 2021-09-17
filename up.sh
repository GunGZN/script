# download script
cd /usr/bin
wget -O admin "https://raw.githubusercontent.com/Bankzza555666/script/main/admin.sh"
wget -O menu "https://raw.githubusercontent.com/Bankzza555666/script/main/menu.sh"
wget -O m "https://raw.githubusercontent.com/Bankzza555666/script/main/menu.sh"
wget -O backup "https://raw.githubusercontent.com/Bankzza555666/script/main/backup.sh"
chmod +x backup
chmod +x m
chmod +x menu
chmod +x admin
# install squid
cd
apt -y install squid3
wget -O /etc/squid/squid.conf "https://raw.githubusercontent.com/Bankzza555666/script/main/squid3.conf"
sed -i $MYIP2 /etc/squid/squid.con
menu
