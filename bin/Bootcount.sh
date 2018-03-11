#!/bin/sh
##########################################
#                                        #
# Script by HydrexHD                     #
#  (c) copyright 2018, HydrexHD          #
#                                        #
##########################################
# Datapath: /usr/local/bin/Bootcount.sh
# Load Bootcount.txt and increment by 1 then exit
count=$(cat /etc/SSH-Banner/DATA/Bootcount.txt)
echo $(expr $count + 1) > /etc/SSH-Banner/DATA/Bootcount.txt
count2=$(cat /etc/SSH-Banner/DATA/Bootcount.txt)
GREEN="\033[01;32m"
PURPLE="\033[01;35m"
echo "${GREEN}Reboot Counts: ${PURPLE}${count2}"
exit 0