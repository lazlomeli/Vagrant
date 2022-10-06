#!/bin/bash

LB="\e[36m"; # LIGHT BLUE
B="\e[34m"; # BLUE
GR="\e[92m"; # GREEN
UDL="\e[21m"; # UNDERLINED
NM="\e[0m"; # NORMAL

echo
echo -e "${B}|=====================================================================================|${NM}";
echo 
echo -e "${LB}[#] Vagrant Setup ===>${NM} Creating ${UDL}data${NM} folder";
sleep 1s; echo -e "${LB}[#] Vagrant Setup ===>${NM} ${GR}DONE${NM}";
echo -e "${LB}[#] Vagrant Setup ===>${NM} Open a tab at 127.0.0.1:8000 once vagrant up command finishes";
sleep 1s;
echo -e "${LB}[#] Vagrant Setup ===>${NM} You can now run ${UDL}vagrant up${NM} command to run the project";
echo 
echo -e "${B}|===================================[by Lazlo Meli]===================================|${NM}";
