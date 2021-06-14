#!/bin/bash						#
#chia auto installer, ver0.1				#
#########################################################
#bu scripti kullanmadan once 				#
#diskinizi /root/hdd klasorune mount edin		#
#1 sudo su						#
#2 cd							#
#3 chmod 777 installer2.sh			        #
#4 bash installer2.sh				        #
#########################################################
#islemler bittikten sonra yapmaniz gerekenler,          #
#1 gcloud init                                          #
#2 screen -l                                            #
#3 ./root/hdd/swardest/auto.sh                          #
#########################################################

#░█████╗░██╗░░░██╗████████╗░█████╗░  ██╗███╗░░██╗░██████╗████████╗░█████╗░██╗░░░░░██╗░░░░░███████╗██████╗░
#██╔══██╗██║░░░██║╚══██╔══╝██╔══██╗  ██║████╗░██║██╔════╝╚══██╔══╝██╔══██╗██║░░░░░██║░░░░░██╔════╝██╔══██╗
#███████║██║░░░██║░░░██║░░░██║░░██║  ██║██╔██╗██║╚█████╗░░░░██║░░░███████║██║░░░░░██║░░░░░█████╗░░██████╔╝
#██╔══██║██║░░░██║░░░██║░░░██║░░██║  ██║██║╚████║░╚═══██╗░░░██║░░░██╔══██║██║░░░░░██║░░░░░██╔══╝░░██╔══██╗
#██║░░██║╚██████╔╝░░░██║░░░╚█████╔╝  ██║██║░╚███║██████╔╝░░░██║░░░██║░░██║███████╗███████╗███████╗██║░░██║
#╚═╝░░╚═╝░╚═════╝░░░░╚═╝░░░░╚════╝░  ╚═╝╚═╝░░╚══╝╚═════╝░░░░╚═╝░░░╚═╝░░╚═╝╚══════╝╚══════╝╚══════╝╚═╝░░╚═╝
RED="\e[31m"
GREEN="\e[32m"
CYAN="\e[36m"
ENDCOLOR="\e[0m"
	echo -e "${RED}
╋╋╋╋╋╋┏┓╋╋╋╋╋╋╋╋╋╋╋┏┓╋╋╋┏┓┏┓╋╋╋╋╋╋╋╋╋╋╋╋╋╋┏━━━┓╋┏┓
╋╋╋╋╋┏┛┗┓╋╋╋╋╋╋╋╋╋┏┛┗┓╋╋┃┃┃┃╋╋╋╋╋╋╋╋╋╋╋╋╋╋┃┏━┓┃┏┛┃
┏━━┳┓┣┓┏╋━━┓┏┳━┓┏━┻┓┏╋━━┫┃┃┃┏━━┳━┓┏┓┏┳━━┳━┫┃┃┃┃┗┓┃
┃┏┓┃┃┃┃┃┃┏┓┃┣┫┏┓┫━━┫┃┃┏┓┃┃┃┃┃┃━┫┏┛┃┗┛┃┃━┫┏┫┃┃┃┃╋┃┃
┃┏┓┃┗┛┃┗┫┗┛┃┃┃┃┃┣━━┃┗┫┏┓┃┗┫┗┫┃━┫┃╋┗┓┏┫┃━┫┃┃┗━┛┣┳┛┗┓
┗┛┗┻━━┻━┻━━┛┗┻┛┗┻━━┻━┻┛┗┻━┻━┻━━┻┛╋╋┗┛┗━━┻┛┗━━━┻┻━━┛${ENDCOLOR}"
sleep 5
echo -e "${CYAN}Guncellemeler denetleniyor.${ENDCOLOR}"
sleep 5
sudo apt-get update
echo -e "${CYAN}Gerekli dosyalar indiriliyor.${ENDCOLOR}"
snap install google-cloud-sdk --classic
sleep 1
cd hdd
git clone https://github.com/Chia-Network/chia-blockchain.git -b latest --recurse-submodules
sleep 1
cd chia-blockchain
sh install.sh
sleep 1
. ./activate
chia init
sleep 1
deactivate
cd ..
mkdir swartemp
sleep 1
mkdir swardest
sleep 1
mkdir swarlogs
git clone https://github.com/swar/Swar-Chia-Plot-Manager.git
sleep 1
cd Swar-Chia-Plot-Manager
python3 -m venv venv
. ./venv/bin/activate
pip install -r requirements.txt
pip install -r requirements-notification.txt
wget https://raw.githubusercontent.com/sezcyy/chia/main/config.yaml
sleep 1
. ./venv/bin/activate
sleep 1
python3 manager.py start
echo -e "${RED}Plotlama islemi basladi!!${ENDCOLOR}"
echo -e "${RED}Plotlama islemi basladi!!${ENDCOLOR}"
echo -e "${RED}Plotlama islemi basladi!!${ENDCOLOR}"
echo -e "${RED}Plotlama islemi basladi!!${ENDCOLOR}"
echo -e "${RED}Plotlama islemi basladi!!${ENDCOLOR}"
echo -e "${RED}Plotlama islemi basladi!!${ENDCOLOR}"
echo -e "${RED}Plotlama islemi basladi!!${ENDCOLOR}"
sleep 3
deactivate
cd /root/hdd/swardest
wget https://raw.githubusercontent.com/sezcyy/chia/main/auto.sh
chmod 777 auto.sh
sleep 1
cd
exit 1
