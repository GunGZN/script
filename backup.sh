	#!/bin/bash
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- icanhazip.com);
clear
echo -e ""
echo -e "**************************************"
echo -e "             กรุณาทำตามขั้นตอน 1 หรือ 2"
echo -e ""
echo -e "     [1]  สำรองข้อมูลบัญชี"
echo -e "     [2]  คืนค่าจากไอพีเก่า"
echo -e "     [x]  ออก"
echo -e "**************************************"
echo -e ""
read -p "    กรุณาเลือก [1,2 หรือ x] :  " changeport
echo -e ""
echo -e "**************************************"
sleep 1
case $changeport in   
                
                1)
                tar cf /home/vps/public_html/BACKUP.tar /etc/passwd /etc/shadow /etc/gshadow /etc/group
                echo -e ""
                echo -e "*************************************'
                echo -e "    แบคอัพข้อมูลสำเร็จ:> $MYIP/BACKUP.tar <"
                echo -e " (คัดลอกลิ้งด้านบนเพื่อนำไปใส่ในเซิฟใหม่หรือเซิฟเดิม)"
                echo -e "**************************************"
                ;;
                2)
                echo -e "**************************************"
                echo -e ""
                echo -e "  นำไอพีที่แบคอัพมาวางเช่น ไอพี่เก่า/BACKUP.tar "
                echo -e ""
                echo -e "**************************************"
read -p "    * ใส่ไอพีที่แบ็คอับใว้  ➡️ " dns2
read -p "    * ยืนยันการคืนค่าผู้ใช้\nของไอพี $dns2 หรือไม่ Y/n : " confirm
if [[ y = $confirm || Y = $confirm ]]; then
cd /
wget -q "http://$dns2/BACKUP.tar"
if [ -e '/BACKUP.tar' ]; then
tar xf BACKUP.tar
rm BACKUP.tar 
clear
cr
echo "    ╭━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╮"
echo "    ┣ คืนค่าผู้ใช้ของไอพี $dns2 เสร็จเรียบร้อย "
echo "    ╰━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╯"
exit
else
clear
cr
echo "    ╭━━━━━━━━━━━━━━━━━━━━━━━━━━━╮"
echo "    ┣ ไม่พบไฟล์คืนค่าผู้ใช้ของไพี $dns2 "
echo "    ╰━━━━━━━━━━━━━━━━━━━━━━━━━━━╯"
exit
fi
else
clear
cr
echo "    ╭━━━━━━━━━━━━━━━━━━━━━━━━━━━━╮"
echo "    ┣ ยกเลิกคืนค่าผู้ใช้ของไอพี $dns2 "
echo "    ╰━━━━━━━━━━━━━━━━━━━━━━━━━━━━╯"
exit
fi
;;
                x)
                clear
                menu
                ;;
        esac
