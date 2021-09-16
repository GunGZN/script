# download script
cd /usr/bin
wget -O menu "https://raw.githubusercontent.com/Bankzza555666/script/main/menu.sh"
wget -O 1 "https://raw.githubusercontent.com/Bankzza555666/script/main/usernew.sh"
wget -O 6 "https://raw.githubusercontent.com/Bankzza555666/script/main/hapus.sh"
wget -O 5 "https://raw.githubusercontent.com/Bankzza555666/script/main//member.sh"
wget -O 3 "https://raw.githubusercontent.com/Bankzza555666/script/main/delete.sh"
wget -O 4 "https://raw.githubusercontent.com/Bankzza555666/script/main/cek.sh"
wget -O 9 "https://raw.githubusercontent.com/Bankzza555666/script/main/restart.sh"
wget -O speedtest "https://raw.githubusercontent.com/Bankzza555666/script/main/speedtest_cli.py"
wget -O info "https://raw.githubusercontent.com/Bankzza555666/script/main/info.sh"
wget -O ram "https://raw.githubusercontent.com/Bankzza555666/script/main/ram.sh"
wget -O 2 "https://raw.githubusercontent.com/Bankzza555666/script/main/renew.sh"
wget -O 7 "https://raw.githubusercontent.com/Bankzza555666/script/main/autokill.sh"
wget -O 8 "https://raw.githubusercontent.com/Bankzza555666/script/main/ceklim.sh"
wget -O tendang "https://raw.githubusercontent.com/Bankzza555666/script/main/tendang.sh"
wget -O clear-log "https://raw.githubusercontent.com/Bankzza555666/script/main/clear-log.sh"
wget -O port "https://raw.githubusercontent.com/Bankzza555666/script/main/change.sh"
wget -O port-ovpn "https://raw.githubusercontent.com/Bankzza555666/script/main/port-ovpn.sh"
wget -O port-ssl "https://raw.githubusercontent.com/Bankzza555666/script/main/port-ssl.sh"
wget -O port-tr "https://raw.githubusercontent.com/Bankzza555666/script/main/port-tr.sh"
wget -O port-squid "https://raw.githubusercontent.com/Bankzza555666/script/main/port-squid.sh"
wget -O port-ws "https://raw.githubusercontent.com/Bankzza555666/script/main/port-ws.sh"
wget -O port-vless "https://raw.githubusercontent.com/Bankzza555666/script/main/port-vless.sh"
wget -O web "https://raw.githubusercontent.com/Bankzza555666/script/main/webmin.sh"
wget -O rootpass "https://raw.githubusercontent.com/Bankzza555666/script/main/rootpass.sh"
wget -O changeport "https://raw.githubusercontent.com/Bankzza555666/script/main/changeport.sh"
wget -O up "https://raw.githubusercontent.com/Bankzza555666/script/main/up.sh"
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
