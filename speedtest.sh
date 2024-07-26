#!/bin/bash
RES_FILE=speedtest.csv
#LOGFILE="speedtest_`date +%Y_"%m_%d_%H%m%S"`.log"
#echo "---------------- Start-------------- " > $LOGFILE 

LOCK_FILE=speedtest.lck
touch $LOCK_FILE
while  [ -f "$LOCK_FILE" ]
do
        TIMESTP=`date +%Y-"%m-%d-%H:%M:%S"`
        SPEED=`fast`
        SPEEDO=$(sed 's/ -> //g' <<< $SPEED | sed 's/ Mbps//g')
        echo "$SPEEDO;$TIMESTP" >> $RES_FILE 
	sleep $1
done

#echo "----------End-------------  " >> $LOGFILE 

