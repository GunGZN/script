#!/bin/bash
clear
echo -e "***************-- SCRIPT BY SP VPN-TH --********************" | lolcat
echo -e "************************************************************" | lolcat
echo -e "****....*****........***..*******..**.........***..******..*" | lolcat
echo -e "*..******..**..******. *..*******..**..******..**....****..*" | lolcat
echo -e "*..**********..******. **..*****..***..*****...**..*..***..*" | lolcat
echo -e "*****..******........ ****..***..****.......*****..**..**..*" | lolcat
echo -e "*********..**..************..*..*****..**********..****....*" | lolcat
echo -e "*..******..**..*************...******..**********..*****...*" | lolcat
echo -e "****....*****..**************.*******..**********..******..*" | lolcat
echo -e "************************************************************" | lolcat
echo -e "***************ติดต่อสอบถามได้ที่ LINE : BAKKISSS***************" | lolcat
ISP=$(curl -s ipinfo.io/org | cut -d " " -f 2-10 )
CITY=$(curl -s ipinfo.io/city )
WKT=$(curl -s ipinfo.io/timezone )
IPVPS=$(curl -s ipinfo.io/ip )
	cname=$( awk -F: '/model name/ {name=$2} END {print name}' /proc/cpuinfo )
	cores=$( awk -F: '/model name/ {core++} END {print core}' /proc/cpuinfo )
	freq=$( awk -F: ' /cpu MHz/ {freq=$2} END {print freq}' /proc/cpuinfo )
	tram=$( free -m | awk 'NR==2 {print $2}' )
	swap=$( free -m | awk 'NR==4 {print $2}' )
	up=$(uptime|awk '{ $1=$2=$(NF-6)=$(NF-5)=$(NF-4)=$(NF-3)=$(NF-2)=$(NF-1)=$NF=""; print }')

echo -e "* ชนิดซีพียู : $cname"
echo -e "* แกน​ : $cores"
echo -e "* ความถี่ซีพียู : $freq MHz"
echo -e "* แรม​ : $tram MB"
echo -e "* ระยะเวลาทำงานของระบบ : $up"
echo -e "* ผู้้ให้บริการ : $ISP"
echo -e "* เมือง​ : $CITY"
echo -e "* เวลา​ : $WKT"
echo -e "* ไอพี​ : $IPVPS"
echo -e ""
echo -e "************************************************************" | lolcat
echo -e "* menu         : สารบัญคำสั่ง"
echo -e "************************************************************" | lolcat
echo -e "                     SSH AND OPENVPN"
echo -e "* 1.           : สร้างบัญชี SSH & OpenVPN"
echo -e "* 2.           : ต่ออายุบัญชี SSH & OpenVPN"
echo -e "* 3.           : ลบบัญชี SSH & OpenVPN"
echo -e "* 4.           : แสดงบัญชีผู้ใช้งาน SSH & OpenVPN"
echo -e "* 5.           : แสดงบัญชี SSH & OpenVPN ทั้งหมด"
echo -e "* 6.           : ลบบัญชี SSH & OpenVPN ที่หมดอายุแล้ว"
echo -e "* 7.           : ตั้งค่าการเข้าใช้งานหลายบัญชี"
echo -e "* 8.           : แสดงบัญชีที่เข้าใช้งานหลายเครื่อง"
echo -e "* 9.           : รีสตาร์ท  Dropbear, Squid3, OpenVPN และ SSH"
echo -e "************************************************************" | lolcat
echo -e "                     VMESS"
echo -e "* 10.          : สร้างบัญชี VMESS"
echo -e "* 11.          : ลบบัญชี VMESS"
echo -e "* 12.          : ตรวจสอบผู้ใช้งานบัญชี VMESS"             
echo -e "* 13.          : ต่ออายุบัญชี VMESS"                     
echo -e "************************************************************" | lolcat
echo -e "                     TROJAN"
echo -e "* 14.          : สร้างบัญชี TROJAN"
echo -e "* 15.          : ลบบัญชี TROJAN"
echo -e "* 16.          : ตรวจสอบผู้ใช้งานบัญชี TROJAN"             
echo -e "* 17.          : ต่ออายุบัญชี TROJAN"
echo -e "************************************************************" | lolcat
echo -e "                     VLESS"
echo -e "* 18.          : สร้างบัญชี VLESS"
echo -e "* 19.          : ลบบัญชี VLESS"
echo -e "* 20.          : ตรวจสอบผู้ใช้งานบัญชี VLESS"             
echo -e "* 21.          : ต่ออายุบัญชี VLESS"
echo -e "************************************************************"  | lolcat
echo -e "                    ตั้งค่าระบบ"
echo -e "* cert         : ต่ออายุ Certificate ของบัญชี V2ray" 
echo -e "* port         : แก้ไขหรือเปลี่ยนพอร์ต"
echo -e "* web          : ติดตั้ง​ Webmin"
echo -e "* reboot       : รีบูตเครื่อง"
echo -e "* speedtest    : ตรวจสอบความเร็วเซิฟเวอร์"
echo -e "* info         : แสดงข้อมูลระบบ"
echo -e "* exit         : ออกจากระบบ"
echo -e "************************************************************" | lolcat
echo -e " ขอบคุณมากที่ใช้บริการของเรา"
echo -e " Copyright ©SP-VPN"
echo -e ""
