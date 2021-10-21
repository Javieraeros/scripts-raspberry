#! /bin/bash
#ip=$(dig +short myip.opendns.com @resolver1.opendns.com)
ip=$(curl ifconfig.me)
echo "[$(date)] New ip $ip" >> /var/log/noip.log
raspibot "Ip updated $ip" 
