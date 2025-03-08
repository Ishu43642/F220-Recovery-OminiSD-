termux-adb shell
mount -o remount,rw /system
echo '127.0.0.1 fota.mst.kai.jiophone.net' >> /system/etc/hosts
echo '127.0.0.1 jioads.akamaized.net' >> /system/etc/hosts
echo '127.0.0.1 ssp.kaiads.com' >> /system/etc/hosts
sync
mount -o remount,ro /system
exit
termux-adb reboot




