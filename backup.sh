#!/bin/bash
clear
cr
echo "    ╭━━━━━━━━━━━━━━━━━━━╮"
echo "    ┣ สำรองชื่อผู้ใช้ และ คืนค่าชื่อผู้ใช้ "
echo "    ╰━━━┳━━━━━━━━━━━┳━━━╯"
echo "    ╭━━━┻━━━━━━━━━━━┻━━━╮"
echo "    ┃ ใส่ตัวเลขแล้วกด enter"
echo "    ┣━━━━━━━━━━━━━━━━━━━╯"
echo "    ┣ 1. Backup "
echo "    ┣ 2. Restore  "
echo "    ┣━━━━━━━━━━━━━━━━━━━╯"
read -p "    ┣ เลือก : " opcao
if [[ $opcao = "1" || $opcao = "2" || $opcao = "3" || $opcao = "4" || $opcao = "5" || $opcao = "6" || $opcao = "7" || $opcao = "8" ]]; then

case $opcao in
  1 | 01 )
tar cf /home/vps/public_html/user.tar /etc/passwd /etc/shadow /etc/gshadow /etc/group
clear
cr
echo "    ╭━━━━━━━━━━━━━━━╮"
echo "    ┣ แบ็คอับเสร็จเรียบร้อย "
echo "    ╰━━━━━━━━━━━━━━━╯"
exit
;;
2 | 02 )
 read -p "    ┣ ใส่ไอพีที่แบ็คอับใว้  ➡️ " dns2
read -p "    ╰ ยืนยันการคืนค่าผู้ใช้ของไอพี $dns2 หรือไม่ Y/n : " confirm
if [[ y = $confirm || Y = $confirm ]]; then
cd /
wget -q "http://$dns2/user.tar"
if [ -e '/user.tar' ]; then
tar xf user.tar
rm user.tar
echo news:4468 | chpasswd
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
esac
