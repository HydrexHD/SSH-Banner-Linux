#!/bin/sh

##########################################
#                                        #
# Script by HydrexHD                     #
#  (c) copyright 2018, HydrexHD          #
#                                        #
##########################################

######## needed Packages: ########
#   ruby:
#     apt install ruby
#   toilet:
#     apt install toilet
#   acpi:
#     apt install acpi
##################################

######## Settings ########
# Config
. /etc/SSH-Banner/ssh-banner.cfg
########################## Load ##########################

# Script Starttime
sriptstarttime=`date +%s`

# Colors:

DARKRED="\033[00;31m"
RED="\033[01;31m"

DARKGREEN="\033[00;32m"
GREEN="\033[01;32m"

BROWN="\033[00;33m"
YELLOW="\033[01;33m"

DARKBLUE="\033[00;34m"
BLUE="\033[01;34m"

DARKPURPLE="\033[00;35m"
PURPLE="\033[01;35m"

CYAN="\033[00;36m"

GREY="\033[00;37m"
WHITE="\033[01;37m"

NC="\033[00m"

# Load Sysinformations:

# Storage Overview
STORAGE1USE=$(df -h ${STORAGE1} | head -n 2 | tail -n 1 | awk {'print $3'})
STORAGE1AVAILABLE=$(df -h ${STORAGE1} | head -n 2 | tail -n 1 | awk {'print $4'})

STORAGE2USE=$(df -h ${STORAGE2} | head -n 2 | tail -n 1 | awk {'print $3'})
STORAGE2AVAILABLE=$(df -h ${STORAGE2} | head -n 2 | tail -n 1 | awk {'print $4'})

STORAGE3USE=$(df -h ${STORAGE3} | head -n 2 | tail -n 1 | awk {'print $3'})
STORAGE3AVAILABLE=$(df -h ${STORAGE3} | head -n 2 | tail -n 1 | awk {'print $4'})

STORAGE4USE=$(df -h ${STORAGE4} | head -n 2 | tail -n 1 | awk {'print $3'})
STORAGE4AVAILABLE=$(df -h ${STORAGE4} | head -n 2 | tail -n 1 | awk {'print $4'})

#Other
if [ "$processescount" = true ] ; then
   RUNNINGPROCESSES=$(ps ax | wc -l | tr -d " ")
fi
if [ "$userprocessescount" = true ] ; then
   RUNNINGUSERPROCESSES=$(ps -u "$(echo $(w -h | cut -d ' ' -f1 | sort -u))" o user= | sort | uniq -c | sort -rn | awk '{print $1}' | sed -e 's/^[ \t]*//')
fi
DATEANDTIME=$(date)
if [ "$cputemp" = true ] ; then
   CPUMOD=$(cat /proc/cpuinfo | grep -m 1 -w 'model name' | awk -F: '{print $2}')
fi
if [ "$cpumodel" = true ] ; then
   CPUTEMP=$(acpi -t | head -n 2 | tail -n 1 | awk {'print $4'})
fi
##if [ "$weatherinfos" = true ] ; then
##   WEATHER=$(curl -s "api.openweathermap.org/data/2.5/weather?id=${cityid} | ")    Coming soon
##fi

# Welcome Text by time
if [ "$welcomemessage" = true ] ; then
 timecheck=`date +%H`
 if [ $timecheck -ge 06 -a $timecheck -le 12 ]
 then
     HELLOMESSAGE="${welcomemessagemorning}"  # Good Morning
 elif [ $timecheck -ge 12 -a $timecheck -le 17 ]
 then
     HELLOMESSAGE="${welcomemessageafternoon}"  # Good Afternoon
           else
     HELLOMESSAGE="${welcomemessageevening}"   # Good Evening
 fi
fi
#Operating Systeminfos
if [ "$operatingsysteminfos" = true ] ; then
   DISTRIB_DESCRIPTION=$(lsb_release -s -d)
   KERNEL=$(uname -r)
fi
#IP Addresses and Hostname
if [ "$internalnetworkip" = true ] ; then
   INTERNALNETWORKIP=$(ip a | grep glo | awk '{print $2}' | head -1 | cut -f1 -d/)
fi
if [ "$publicipaddressautomatic" = false ] ; then
   PUBLICIPADDRESS="${PUBLICADDRESSMANUAL}"
fi
if [ "$publicipaddressautomatic" = true ] ; then
   PUBLICIPADDRESS=$(${FETCH_BIN} https://icanhazip.com/ | tail)
fi
if [ "$hostename" = true ] ; then
   HOSTNAME=$(uname -n)
fi
#Memory and Swap
if [ "$memorystatus" = true ] ; then
   MEMTOTAL=$(free -m | head -n 2 | tail -n 1 | awk {'print $2'})
   MEMUSE=$(free -m | head -n 2 | tail -n 1 | awk {'print $3'})
fi
if [ "$swap" = true ] ; then
   SWAPTOTAL=$(free -m | head -n 3 | tail -n 1 | awk {'print $2'})
   SWAPUSE=$(free -m | head -n 3 | tail -n 1 | awk {'print $3'})
fi
# User
USER=$(whoami)
if [ "$lastuserlogin" = true ] ; then
   LASTUSERLOGIN=$(last -i $USER | grep -v 'still logged' | head -1)
fi
if [ "$currentsessions" = true ] ; then
   CURRENTSESSIONS=$(who)
fi
# Uptime
if [ "$systemuptime" = true ] ; then
   upSeconds="$(/usr/bin/cut -d. -f1 /proc/uptime)"
   secs=$((${upSeconds}%60))
   mins=$((${upSeconds}/60%60))
   hours=$((${upSeconds}/3600%24))
   days=$((${upSeconds}/86400))
   UPTIME=`printf "%d days, %02dh %02dm %02ds" "$days" "$hours" "$mins" "$secs"`
fi
# Update Checks
if [ "$updatecount" = true ] ; then
   UPDATES=$(apt-get --just-print upgrade 2>&1 | perl -ne 'if (/Inst\s([\w,\-,\d,\.,~,:,\+]+)\s\[([\w,\-,\d,\.,~,:,\+]+)\]\s\(([\w,\-,\d,\.,~,:,\+]+)\)? /i) {print "PROGRAM: $1 INSTALLED: $2 AVAILABLE: $3\n"}')
fi
# Reboot Counts
REBOOTCOUNT=$(cat /etc/SSH-Banner/DATA/Bootcount.txt)
## Net Statistics
##NETWORKSPEED=`netstat -N -i | grep eth1 | awk '{if ($1 > 0 && $4 > 0) print $1,int($4/1000000)"GiB down",int($8/1000000)"GiB up"}' || No Connection!`   Coming soon!

# Load Banner.sh (Banner Config)
. /etc/SSH-Banner/Banner.sh
# Text:
toilet -f pagga -F metal "${SSHBANNERTITLE}"
echo ""
echo "${LINE1}${NC}"
echo "${LINE2}${NC}"
echo "${LINE3}${NC}"
echo "${LINE4}${NC}"
echo "${LINE5}${NC}"
echo "${LINE6}${NC}"
echo "${LINE7}${NC}"
echo "${LINE8}${NC}"
echo "${LINE9}${NC}"
echo "${LINE10}${NC}"
echo "${LINE11}${NC}"
echo "${LINE12}${NC}"
echo "${LINE13}${NC}"
echo "${LINE14}${NC}"
echo "${LINE15}${NC}"
echo "${LINE16}${NC}"
echo "${LINE17}${NC}"
echo "${LINE18}${NC}"
echo "${LINE19}${NC}"
echo "${LINE20}${NC}"
echo "${LINE21}${NC}"
echo "${LINE22}${NC}"
echo ""
if [ "$viewexecutingtime" = true ] ; then
   scriptendtime=`date +%s`
   scriptruntime=$((scriptendtime-sriptstarttime))
   echo "${GREEN}Execution time was:" $scriptruntime "seconds"
fi
echo "${NC}"
