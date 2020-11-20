#!/bin/bash
LOGFILE="speedtest_`date +%Y_"%m_%d_%H%m%S"`.log"
echo "---------------- Start-------------- " > $LOGFILE 

while true
do
        TIMESTP=`date +%Y-"%m-%d %H:%M:%S"`
        SPEED=`fast`
        echo "$SPEED;$TIMESTP" >> $LOGFILE 
	sleep $1
done

echo "----------End-------------  " > $LOGFILE 

