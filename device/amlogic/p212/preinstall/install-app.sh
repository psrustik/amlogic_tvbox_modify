#!/system/bin/sh

FLAG=$(getprop persist.sys.first_run)
echo "getprop persist.sys.first_run" >> /data/first_run.txt
echo $FLAG >> /data/first_run.txt

if [ 1 -eq $FLAG ];then
	setprop persist.sys.first_run 0
	mkdir /data/app/
	busybox cp /system/usr/app/* /data/app/
	chmod 777 /data/app/*
fi
