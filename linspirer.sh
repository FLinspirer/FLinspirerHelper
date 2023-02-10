#!/system/bin/sh
until [ -n $(pidof com.android.launcher3) ]
do
    sleep 10s
done

sleep 30s

am start -n com.android.launcher3/com.innofidei.guardsecure.AdminActivity #如果不需要开机打开管理员设置 注释或者删掉本行即可

while true
do
    until [ -n $(pidof com.android.launcher3) ]
    do
        sleep 30s
    done
    am broadcast -n com.android.launcher3/com.innofidei.guardsecure.service.EduAppReceiver -a "com.linspirer.edu.class.over"
    am broadcast -n com.android.launcher3/com.innofidei.guardsecure.service.EduAppReceiver -a "com.linspirer.edu.enable.screenshot"
    am broadcast -n com.android.launcher3/com.innofidei.guardsecure.service.EduAppReceiver -a "com.linspirer.edu.enableotg"
    am broadcast -n com.android.launcher3/com.innofidei.guardsecure.service.EduAppReceiver -a "com.linspirer.edu.disablefirewall"
    sleep 3s
    am broadcast -n com.android.launcher3/com.innofidei.guardsecure.service.EduAppReceiver -a "com.linspirer.edu.enableshortpower"
    am broadcast -n com.android.launcher3/com.innofidei.guardsecure.service.EduAppReceiver -a "com.linspirer.edu.no_control_screen_shoot"
    am broadcast -n com.android.launcher3/com.innofidei.guardsecure.service.EduAppReceiver -a "com.linspirer.edu.enablestatusbar"
    am broadcast -n com.android.launcher3/com.innofidei.guardsecure.service.EduAppReceiver -a "com.linspirer.edu.enablenavigationbar"
    sleep 3s
    am broadcast -n com.android.launcher3/com.innofidei.guardsecure.service.EduAppReceiver -a "com.linspirer.edu.enablevolume"
    am broadcast -n com.android.launcher3/com.innofidei.guardsecure.service.EduAppReceiver -a "com.linspirer.edu.no_control_camera"
    am broadcast -n com.android.launcher3/com.innofidei.guardsecure.service.EduAppReceiver -a "com.linspirer.edu.close_eyeprotect"
    am broadcast -n com.android.launcher3/com.innofidei.guardsecure.service.EduAppReceiver -a "com.android.laucher3.mdm.enableLongPressPower"
    sleep 1m
done