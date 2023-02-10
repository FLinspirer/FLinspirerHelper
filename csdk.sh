#!/system/bin/sh
while true
do
    setprop persist.sys.csdk.capscr true
    setprop persist.sys.csdk.volumedown false
    setprop persist.sys.csdk.volumeup false
    setprop persist.sys.csdk.power false
    setprop persist.sys.csdk.enabledata 1
    setprop persist.sys.csdk.enablesim 1
    setprop persist.sys.csdk.restorefactory 0
    setprop persist.sys.csdk.wifi 0
    setprop persist.sys.csdk.wifidirect 0
    setprop persist.sys.csdk.bluetoothtethering 0
    setprop persist.sys.csdk.bluetooth 0
    setprop persist.sys.csdk.installpackage.verification false
    setprop persist.sys.csdk.setRuntimePermissions false
    setprop persist.sys.csdk.disallowSetMediaVolume false
    setprop persist.sys.csdk.disallowSetNotificationVolume false
    setprop persist.sys.csdk.disallowSetAlarmVolume false
    setprop persist.sys.csdk.enableAllUnkownsources_v3 false
    sleep 1m
done