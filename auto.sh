#!/bin/bash
while [ true ]
do
	touch log.txt
	echo -e "\e[3;36mGonderim islemi basladi!\e[0m"
	gsutil -m mv *.plot gs://my-projects-about-premiere
	echo -e "\e[3;93mDosya gonderildi\e[0m"
	ls >> log.txt
	echo $(date) >> log.txt
	echo -e "\e[3;93m***Beklemede\e[0m"
	sleep 30m
done
