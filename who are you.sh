#!/bin/bash
######################################################################################
# File Name:Im.sh
# Auther:Tyson
# Email:admin#svipc.com
# Version:1.0.0
# Created Time:2015年07月28日 星期二 16时22分28秒
######################################################################################

clear && echo -e "\n\n\n"
awk -F'\' '{for (i=1;i<NF;i++){printf "\\"$i"\n"}if(i=NF){print "\\"$i}}' /root/Tyson | ascii2uni -a U -q | while read line;do
        if [ "$line" != ";" ];then
                echo -n "$line" && sleep 0.2
        else
                echo -e ";\n"
        fi
done
echo -e "\t\t" && for i in {1..6};do echo -n ". " && sleep 1;done
clear
echo -e "\n\n\n" && echo "This is the Shell Code......"
echo -e "\t\t" && for i in {1..6};do echo -n ". " && sleep 1;done
clear
echo -e "$(cat $0 | head -27 | sed 's/^#.*$/&\\033[39;49;0m/;s/^#/\\033[32;49;1m#/;s/\\n/\\\\n/g')"