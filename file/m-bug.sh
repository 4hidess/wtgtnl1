#!/bin/bash
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT='\033[0;37m'
MYIP=$(wget -qO- ipinfo.io/ip);
echo "Checking VPS"
CEKEXPIRED () {
    today=$(date -d +1day +%Y-%m-%d)
    Exp1=$(curl -sS https://raw.githubusercontent.com/Erpinkun/IP-Register/main/ip | grep $MYIP | awk '{print $3}')
    if [[ $today < $Exp1 ]]; then
    echo -e "\e[32mSTATUS SCRIPT AKTIF...\e[0m"
    else
    echo -e "\e[31mSCRIPT ANDA EXPIRED!\e[0m";
    
    exit 0
fi
}
IZIN=$(curl -sS https://raw.githubusercontent.com/Erpinkun/IP-Register/main/ip | awk '{print $4}' | grep $MYIP)
if [ $MYIP = $IZIN ]; then
echo -e "\e[32mPermission Accepted...\e[0m"
CEKEXPIRED
else
echo -e "\e[31mPermission Denied!\e[0m";
exit 0
fi
clear
echo -e "${ORANGE}╒࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐╕\033[0m"
echo -e " \E[0;36;44;1m               MENU BUG ALL OPERATOR              \E[0m"
echo -e "${CYAN}╘࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐╛\033[0m"
echo -e ""
echo -e " [\e[36m•1\e[0m] BUG Telkomsel "
echo -e " [\e[36m•2\e[0m] BUG INDOSAT "
echo -e " [\e[36m•3\e[0m] BUG XL "
echo -e " [\e[36m•4\e[0m] BUG AXIS "
echo -e " [\e[36m•5\e[0m] BUG BYU "
echo -e ""
echo -e " [\e[31m•0\e[0m] \e[31mKEMBALK KE MENU AWAL\033[0m"
echo -e ""
echo -e   "Press x or [ Ctrl+C ] • To-Exit"
echo ""
echo -e "${RED} ⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻\033[0m"
echo -e ""
read -p " Select menu :  "  opt
echo -e ""
case $opt in
1) clear ; m-telkomsel ; exit ;;
2) clear ; m-indosat ; exit ;;
3) clear ; m-xl ; exit ;;
4) clear ; m-axis ; exit ;;
5) clear ; m-byu ; exit ;;
0) clear ; menu ; exit ;;
x) exit ;;
*) echo "Tekan Yang Bener Sayang" ; sleep 1 ; m-bug ;;
esac
