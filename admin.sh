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
read -p "    * ใส่ลิ้งค์แบคอัพที่สร้างไว้ ➡️  " dns2
read -p "    * ใส่ชื่อไฟล์ที่บันทึกไว้   ➡️  " file2
read -p "    * ยืนยันการคืนค่าผู้ใช้ $dns2 หรือไม่ Y/n : " confirm
wget -q "http://$dns2/$file2.tar"
if [[ y = $confirm || Y = $confirm ]]; then
wget -q "http://$dns2/$file2.tar"
cd /
wget -q "http://$dns2/$file2.tar"
if [ -e '/$file2.tar' ]; then
tar xf $file2.tar
rm $file2.tar
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
else
clear
echo "    ╭━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╮"
echo "    ┣ ยกเลิกคืนค่าผู้ใช้ของไอพี $dns2 "
echo "    ╰━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╯"
exit
fi
;;

             
                x)
                clear
                menu
                ;;
        esac
