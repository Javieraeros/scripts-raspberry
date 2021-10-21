#!/bin/bash
dd if=/dev/mmcblk0 of=/media/javi/disco/backup/raspberry.img && raspibot "Backup Success" || raspibot "Backup failed"
