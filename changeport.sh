#!/bin/bash
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- icanhazip.com);
clear
echo -e ""
echo -e "**************************************"
echo -e "             กรุณาทำตามขั้นตอน 1,2"
echo -e ""
echo -e "     [1]  เปลี่ยนพ็อตหลักเป็น 80"
echo -e "     [2]  รีบูต VPS (ต้องเลือก)"
echo -e "     [x]  ออก"
echo -e "*หากต้องการใช้ VMESSต่างๆต้องไปเปลี่ยนพ็อตVMESSก่อน"
echo -e "**************************************"
echo -e ""
read -p "    กรุณาเลือก [1,2 หรือ x] :  " changeport
echo -e ""
echo -e "**************************************"
sleep 1
case $changeport in   
                
                2)
                sed -i 's/listen       81/listen       80/' /etc/nginx/conf.d/vps.conf
                echo -e ""
                echo -e "**************************************"
                echo -e ""
                echo -e "          ดำเนินการสำเร็จโปรดรีบูต VPS "
                echo -e ""
                echo -e "**************************************"
                changeport
                ;;
                2)
                /sbin/reboot
                ;;
                x)
                clear
                menu
                ;;
        esac
