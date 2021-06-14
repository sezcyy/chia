#!/bin/bash
while [ true ]
do
	touch log.txt
	echo -e "\e[3;36mGonderim islemi basladi!\e[0m"
	aws s3 mv *.plot s3://sezcyy1/ --endpoint https://polycloud.crowdapis.com/
	echo -e "\e[3;93mDosya gonderildi\e[0m"
	ls >> log.txt
	echo $(date) >> log.txt
	echo -e "\e[3;93m***Beklemede\e[0m"
	sleep 30m
done
