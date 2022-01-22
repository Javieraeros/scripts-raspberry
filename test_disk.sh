#!/bin/sh

TEST_FILE="/home/javi/tmp/test1.img"

dd if=/dev/zero of=$TEST_FILE bs=100M count=1 oflag=dsync

rm $TEST_FILE
