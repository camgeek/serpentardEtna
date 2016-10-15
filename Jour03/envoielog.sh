#!/bin/bash
DATE=`date '+%d%m%y%H%M'`
#echo  $DATE
#touch -t "$DATE" /home/camille/error-wordpress.log
#touch -t "$DATE" /home/camille/custom-wordpress.log
#touch error-wordpress"$DATE".log custom-wordpress"$DATE".log
touch error-wordpresTs.log custom-word.log
cat "/home/camille/custom-wordpress.log" >  "custom-word.log"
cat "/home/camille/error-wordpress.log" >  "error-wordpresTs.log"
mv custom-word.log custom-wordpress"$DATE".log
mv error-wordpresTs.log  error-wordpress"$DATE".log


scp /home/camille/error-wordpress"$DATE".log  camille@192.168.1.50:/home/camille/depot_log

scp /home/camille/custom-wordpress"$DATE".log camille@192.168.1.50:/home/camille/depot_log

rm error-wordpress"$DATE".log
rm custom-wordpress"$DATE".log
