#!/system/bin/sh
while true
do
    if [ $(getprop persist.sys.usb.config) != "adb,mtp" ]; then
        setprop persist.sys.usb.config adb,mtp
    fi
    sleep 30s
done