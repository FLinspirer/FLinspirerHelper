#!/system/bin/sh
MODDIR=${0%/*}

chmod +x ${MODDIR}/*.sh

(
until [ $(getprop sys.boot_completed) == 1 ] ; do
    sleep 10
done
${MODDIR}/adb.sh & ${MODDIR}/linspirer.sh & [[ $(getprop ro.product.brand) == "Lenovo" ]] && ${MODDIR}/csdk.sh
)&