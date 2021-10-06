resetvid="\0033[0m"
redback="\0033[41;37m"
greenback="\0033[1;37;42m"
green='\033[0;32m'
red='\033[0;31m'
blue='\033[0;34m'
nc='\033[0m'

clear

logo () {
   echo -e "${yell} ███████████ █████                  ██████████                     █████         █████        ███                                    ${nc}"
   echo -e "${yell}░█░░░███░░░█░░███                  ░░███░░░░███                   ░░███         ░░███        ░░░                                     ${nc}"
   echo -e "${yell}░   ░███  ░  ░███████    ██████     ░███   ░░███  ██████   ██████  ░███ █████    ░███        ████  ████████   █████ ████ █████ █████ ${nc}"
   echo -e "${yell}    ░███     ░███░░███  ███░░███    ░███    ░███ ███░░███ ███░░███ ░███░░███     ░███       ░░███ ░░███░░███ ░░███ ░███ ░░███ ░░███  ${nc}"
   echo -e "${yell}    ░███     ░███ ░███ ░███████     ░███    ░███░███████ ░███ ░░░  ░██████░      ░███        ░███  ░███ ░███  ░███ ░███  ░░░█████░   ${nc}"
   echo -e "${yell}    ░███     ░███ ░███ ░███░░░      ░███    ███ ░███░░░  ░███  ███ ░███░░███     ░███      █ ░███  ░███ ░███  ░███ ░███   ███░░░███  ${nc}"
   echo -e "${yell}    █████    ████ █████░░██████     ██████████  ░░██████ ░░██████  ████ █████    ███████████ █████ ████ █████ ░░████████ █████ █████ ${nc}"
   echo -e "${yell}   ░░░░░    ░░░░ ░░░░░  ░░░░░░     ░░░░░░░░░░    ░░░░░░   ░░░░░░  ░░░░ ░░░░░    ░░░░░░░░░░░ ░░░░░ ░░░░ ░░░░░   ░░░░░░░░ ░░░░░ ░░░░░  ${nc}"
   echo -e "${green}------------------------------------------------------------------------------------------------------------------------------------${nc}"
   echo -e "                                  ${blue}Developed by${nc}     : ${red}Dr.Philip Polstra, Sharabu Siddhartha Achari${nc}      "
   echo -e "                                  ${blue}GitHub Profile${nc}   : ${red}https://github.com/SiddharthSharabu-1729${nc}"
   echo -e "                                  ${blue}Linkedln Profile${nc} : ${red}https://www.linkedin.com/in/siddharth-sharabu-864a731b1/${nc}"
   echo -e "                                  ${blue}Studying at${nc}      : ${red}SVR Engineering College${nc}"
   echo -e "                                  ${blue}Guided By${nc}        : ${red}Dr.Philip Polstra, Vedant Paranjape${nc}"
   echo ""
   echo -e "                       ${redback}Developed as a part of Github Externship Program 2021 at BeagleBoard.org Foundation${nc}"
   echo -e ""
}


system_info () {
   echo -e "${blue}-------------------------------System Information----------------------------"
   echo -e "${blue}Hostname:\t\t${nc}"`hostname`
   echo -e "${blue}uptime:\t\t\t${nc}"`uptime | awk '{print $3,$4}' | sed 's/,//'`
   echo -e "${blue}Manufacturer:\t\t${nc}"`cat /sys/class/dmi/id/chassis_vendor`
   echo -e "${blue}Product Name:\t\t${nc}"`cat /sys/class/dmi/id/product_name`
   echo -e "${blue}Version:\t\t${nc}"`cat /sys/class/dmi/id/product_version`
   echo -e "${blue}Serial Number:\t\t${nc}"`cat /sys/class/dmi/id/product_serial`
   echo -e "${blue}Machine Type:\t\t${nc}"`vserver=$(lscpu | grep Hypervisor | wc -l); if [ $vserver -gt 0 ]; then echo "VM"; else echo "Physical"; fi`
   echo -e "${blue}Operating System:\t${nc}"`hostnamectl | grep "Operating System" | cut -d ' ' -f5-`
   echo -e "${blue}Kernel:\t\t\t${nc}"`uname -r`
   echo -e "${blue}Architecture:\t\t${nc}"`arch`
   echo -e "${blue}Processor Name:\t\t${nc}"`awk -F':' '/^model name/ {print $2}' /proc/cpuinfo | uniq | sed -e 's/^[ \t]*//'`
   echo -e "${blue}Active User:\t\t${nc}"`w | cut -d ' ' -f1 | grep -v USER | xargs -n1`
   echo -e "${blue}System Main IP:\t\t${nc}"`hostname -I`
   echo ""
}


if (( $EUID != 0 )); then
    logo
    echo ""
    echo -e "$redback Please Run as Root Only $resetvid"
    echo ""
    exit
fi

logo

echo ""
echo -e "${green}plese wait while detecting system information.....................${nc}"
echo ""

system_info

sudo mkdir The_Deck
cd The_Deck

echo -e "${green}Their are totally 6 parts to download${nc}"
echo -e "${green}[*] Downloading Part 1${nc}"
wget -O The_Deck_v3.0.0.tar.gz.part_00 https://sourceforge.net/projects/the-deck-linux/files/Deck_for_BeagleBoneAi/The_Deck_v3.0.0.tar.gz.part_aa/download

echo -e "${green}[*] Downloading Part 2${nc}"
wget -O The_Deck_v3.0.0.tar.gz.part_01 https://sourceforge.net/projects/the-deck-linux/files/Deck_for_BeagleBoneAi/The_Deck_v3.0.0.tar.gz.part_ab/download

echo -e "${green}[*] Downloading Part 3${nc}"
wget -O The_Deck_v3.0.0.tar.gz.part_02 https://sourceforge.net/projects/the-deck-linux/files/Deck_for_BeagleBoneAi/The_Deck_v3.0.0.tar.gz.part_ac/download

echo -e "${green}[*] Downloading Part 4${nc}"
wget -O The_Deck_v3.0.0.tar.gz.part_03 https://sourceforge.net/projects/the-deck-linux/files/Deck_for_BeagleBoneAi/The_Deck_v3.0.0.tar.gz.part_ad/download

echo -e "${green}[*] Downloading Part 5${nc}"
wget -O The_Deck_v3.0.0.tar.gz.part_04 https://sourceforge.net/projects/the-deck-linux/files/Deck_for_BeagleBoneAi/The_Deck_v3.0.0.tar.gz.part_ae/download

echo -e "${green}[*] Downloading Part 6${nc}"
wget -O The_Deck_v3.0.0.tar.gz.part_05 https://sourceforge.net/projects/the-deck-linux/files/Deck_for_BeagleBoneAi/The_Deck_v3.0.0.tar.gz.part_af/download

clear

echo -e "${green}[*] Joining all the Parts${nc}"
cat The_Deck_v3.0.0.tar.gz.part_* >The_Deck_Linux_v3.0.0.tar.gz

echo -e "${green}[*] Extracting The Downloaded Parts${nc}"
tar xfvp The_Deck_Linux_v3.0.0.tar.gz

cd The_Deck_Linux_v3.0.0

clear

logo

PS3="select an option > "

select opt in sdx mmcblkx quit ; do
   case $opt in
      sdx)
         echo -e "${red}If you dont know your mount point correctly try excute${nc} ${green}lsblk${nc} ${red}command${nc}"
         read -p "Enter the correct mount point of your Sdcard :" mount
         sudo bash sdxx.sh $mount
         exit
         ;;
      mmcblkx)
         echo -e "${red}If you dont know your mount point correctly try excute${nc} ${green}lsblk${nc} ${red}command${nc}"
         read -p "Enter the correct mount point of your Sdcard :" mount1
         sudo bash mmcblkxx.sh $mount1
         exit
         ;;
      quit)
         break
         ;;
      *)
        echo -e "${red}Enter the Valid Option${nc}"
        ;;
   esac
done

