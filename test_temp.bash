#!/bin/bash
clear
for f in {1..7}
do
    echo "[$(date)] $(vcgencmd measure_temp)" >> /var/log/temperature.log
    sysbench --test=cpu --cpu-max-prime=25000 --num-threads=4 run >/dev/null 2>&1
done
echo "[$(date)] $(vcgencmd measure_temp)" >> /var/log/temperature.log
