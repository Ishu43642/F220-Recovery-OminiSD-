termux-adb shell
cd /data/fota/downloaded
rm update.zip
cd /data/fota
rmdir downloaded
exit
termux-adb reboot
