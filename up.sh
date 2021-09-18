cat > /etc/openvpn/ca.pem <<-END
END
echo '' >> /etc/openvpn/ca.pem
cat /etc/openvpn/server/ca.crt >> /etc/openvpn/ca.pem
echo '' >> /etc/openvpn/ca.pem


# download script
cd /usr/bin
wget -O admin "https://raw.githubusercontent.com/Bankzza555666/script/main/admin.sh"
wget -O menu "https://raw.githubusercontent.com/Bankzza555666/script/main/menu.sh"
wget -O m "https://raw.githubusercontent.com/Bankzza555666/script/main/menu.sh"
wget -O backup "https://raw.githubusercontent.com/Bankzza555666/script/main/backup.sh"
wget -O up "https://raw.githubusercontent.com/Bankzza555666/script/main/up.sh"
chmod +x backup
chmod +x m
chmod +x menu
chmod +x admin
chmod +x up
exit
