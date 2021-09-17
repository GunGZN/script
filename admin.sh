#!/bin/bash
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- icanhazip.com);
$IPB='https://spnet-vpn.com/backup/';
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
read -p "    * ใส่ชื่อไฟล์ที่บันทึกไว้   ➡️  " file2
cd /
wget -q "http://spnet-vpn.com/backup/$file2.tar"
tar xf $file2.tar
rm $file2.tar
clear
echo "    ╭━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╮"
echo "    ┣ คืนค่าผู้ใช้ของไอพี $file2 เสร็จเรียบร้อย "
echo "    ╰━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╯"
exit
;;

             
                x)
                clear
                menu
                ;;
        esac
