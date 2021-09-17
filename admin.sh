#!/bin/bash
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- icanhazip.com);
clear
echo -e ""
echo -e "       **************************************"
echo -e "               กรุณาทำตามขั้นตอน 1 หรือ 2"
echo -e ""
echo -e "          [1]  สำรองข้อมูลบัญชี"
echo -e "          [2]  คืนค่าจากไอพีเก่า"
echo -e "          [x]  ออก"
echo -e ""
echo -e "       **************************************"
echo -e ""
read -p "         กรุณาเลือก [1,2 หรือ x] :  " changeport
echo -e ""
echo -e "       **************************************"
sleep 1
case $changeport in   
                
                1)
                tar cf /home/vps/public_html/BACKUP.tar /etc/passwd /etc/shadow /etc/gshadow /etc/group
                echo -e ""
                echo -e "*************************************"
                echo -e "         ⬇️  แบคอัพข้อมูลสำเร็จ  ⬇️  "
                echo -e ""
                echo -e "             $MYIP               "
                echo -e ""
                echo -e "         ⬆️ คัดลอกไอพีไปรีสโสตร์ ⬆️  "
                echo -e "*************************************"
                ;;
                2)
                echo -e "**************************************"
                echo -e ""
                echo -e "   นำไอพีที่แบคอัพมาวางเพื่อย้ายสมาชิคมาเซิฟนี้ "
                echo -e ""
                echo -e "**************************************"
                echo -e ""
read -p "    * ใส่ชื่อเซิฟหรือชื่อไฟล์จากเว็ป ➡️  " dns2
cd /
wget -q "https://spnet-vpn.com/backup/$dns2.tar"
if [ -e '/$dns2.tar' ]; then
tar xf $dns2.tar
rm $dns2.tar 
clear
echo "    ╭━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╮"
echo "    ┣ คืนค่าผู้ใช้ของไอพี $dns2 เสร็จเรียบร้อย "
echo "    ╰━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╯"
exit
else
clear
echo "    ╭━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╮"
echo "    ┣ ไม่พบไฟล์คืนค่าผู้ใช้ของไพี $dns2 "
echo "    ╰━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╯"
exit
fi
;;

             
                x)
                clear
                menu
                ;;
        esac
