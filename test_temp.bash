#!/bin/bash
for f in {1..9}
do
    echo "[$(date)] $(vcgencmd measure_temp)" >> /var/log/temperature.log
    sysbench --test=cpu --cpu-max-prime=9000000 --num-threads=6 run >/dev/null 2>&1
done
echo "[$(date)] $(vcgencmd measure_temp)" >> /var/log/temperature.log
