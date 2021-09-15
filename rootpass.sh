#!/bin/bash
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- icanhazip.com);
clear
echo -e ""
echo -e "**************************************"
echo -e "             ทำตามขั้นตอน 1-3 "
echo -e ""
echo -e "     [1]  ตั้งรหัสสำหรับ ROOT (U16-18)"
echo -e "     [2]  เปิดการอนุญาติ ROOT LOGIN (ต้องเลือก)"
echo -e "     [3]  รีบูต SSH (ต้องเลือก)"
echo -e "     [x]  ออก"
echo -e "**************************************"
echo -e ""
read -p "    กรุณาเลือก [1,2 หรือ x] :  " rootpass
echo -e ""
echo -e "**************************************"
sleep 1
case $rootpass in   
                1)
                clear
                echo -e "**************************************"
                echo -e ""
                echo -e "          กรุณาใส่รหัสผ่านที่ต้องการ "
                echo -e ""
                echo -e "**************************************"
                sudo passwd
                sudo sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
                rootpass
                ;;
                2)
                sudo sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
                rootpass
                ;;
                3)
                sudo service ssh restart
                echo -e ""
                echo -e "**************************************"
                echo -e ""
                echo -e "          ดำเนินการสำเร็จ "
                echo -e ""
                echo -e "**************************************"
                menu
                ;;
                x)
                clear
                menu
                ;;
        esac
