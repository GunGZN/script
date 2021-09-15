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
echo -e "     [1]  เปลี่ยนพ็อตหลักเป็น 80"
echo -e "     [2]  รีบูต VPS (ต้องเลือก)"
echo -e "     [x]  ออก"
echo -e "**************************************"
echo -e ""
read -p "    กรุณาเลือก [1,2 หรือ x] :  " rootpass
echo -e ""
echo -e "**************************************"
sleep 1
case $rootpass in   
                
sftp://root:@116.204.181.182/
                2)
                sed -i 's/#listen       81 /listen       80/' /etc/nginx/conf.d/vps.conf
                echo -e ""
                echo -e "**************************************"
                echo -e ""
                echo -e "          ดำเนินการสำเร็จโปรดรีบูต VPS "
                echo -e ""
                echo -e "**************************************"
                menu
                ;;
                2)
                clear
                reboot
                ;;
                x)
                clear
                menu
                ;;
        esac
© 2021 GitHub, Inc.
