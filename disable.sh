#!/bin/bash
trap "echo -e '\033[0;31m Script execution aborted. \033[0m'; exit 1" INT

echo -e "\033[0;33m
-------------------------------------------
 * RepairA2Z Jio Update Disable Tool *
-------------------------------------------
        What do you want to do?
-------------------------------------------
  1. Enter to Adb shell
  2. Mount System Read write 
  3. Disable Server 1
  4. Disable server 2
  5. Disable Server 3
  6. sync system 
  7. Mount System Read only
  8. exit system shell
  9. Reboot device
 10. Main Menu
-------------------------------------------
(Press Any key to Exit or input your choice.)
\033[0m";

read -p "Choice: " flasher

case $flasher in
  "1")

     echo -e "\033[0;32m Entering to system shell. \033[0m";
    
termux-adb shell
    
    source ./disable.sh
  ;;
  "2")
     echo -e "\033[0;32m Mounting system for read write. \033[0m";
    mount -o remount,rw /system
    
    source ./disable.sh

  ;;
  "7")
    echo -e "\033[0;32m mounting system read only: \033[0m"
    mount -o remount,ro /system

    source ./disable.sh
  ;;
  "6")
    echo -e "\033[0;32m system sync : \033[0m"
    sync

    source ./disable.sh
  ;;
  "8")
    
  echo -e "\033[0;32m exiting system shell. \033[0m";
        exit

    source ./disable.sh


  ;;
"3")

    echo -e "\033[0;32m Disabling jio server1! \033[0m";
    echo '127.0.0.1 fota.mst.kai.jiophone.net' >> /system/etc/hosts

    source ./disable.sh
  ;;
"9")
    echo -e "\033[0;32m Rebooting Device !Have a good day! \033[0m";
    termux-adb reboot

    source ./disable.sh
  ;;
"4")
    echo -e "\033[0;32m Disabling jio server 2! \033[0m";
    echo '127.0.0.1 jioads.akamaized.net' >> /system/etc/hosts

    source ./disable.sh
  ;;
"5")
    
  echo -e "\033[0;32m Disabling jio server 3! \033[0m";
    echo '127.0.0.1 ssp.kaiads.com' >> /system/etc/hosts

source ./disable.sh
  ;;
"10")
    echo -e "\033[0;32m Back to Main Page! \033[0m";
    ./f220b.sh

    source ./disable.sh
  ;;
  *)
    echo -e '\033[0;31m Script execution aborted. \033[0m';
    exit 1
  ;;
esac


