#!/bin/bash
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- icanhazip.com);

clear

echo -e ""
echo -e "**************************************"
echo -e "             สคริปโดย sp vpn-th"
echo -e ""
echo -e "     [1]  ตั้งรหัสสำหรับ ROOT"
echo -e "     [2]  รีบูต SSH (ต้องเลือก)"
echo -e "     [x]  ออก"
echo -e "**************************************"
echo -e ""
read -p "    กรุณาเลือก [1,2 หรือ x] :  "


sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

/etc/init.d/ssh restart
