#!/bin/sh

while true
do
    echo 4 > /sys/class/thermal/cooling_device0/cur_state
    vcgencmd measure_temp
    sleep 1
done
