#!/bin/bash
trap "echo -e '\033[0;31m Script execution aborted. \033[0m'; exit 1" INT

echo -e "\033[0;33m
-------------------------------------------
 * RepairA2Z Jio Update Delete Tool *
-------------------------------------------
        What do you want to do?
-------------------------------------------
  1. Enter to Adb shell
  2. Chenge diractory
  3. Remove update zip
  4. Back Diractory 
  5. Remove Update Folder
  6. exit system shell
  7. Reboot device
  8. Main Menu
-------------------------------------------
(Press Any key to Exit or input your choice.)
\033[0m";

read -p "Choice: " flasher

case $flasher in
  "1")

     echo -e "\033[0;32m Entering to system shell. \033[0m";
    
termux-adb shell
    
    source ./delete.sh
  ;;
  "2")
     echo -e "\033[0;32m Chenging Directory. \033[0m";
    cd /data/fota/downloaded
    
    source ./delete.sh

  ;;
  "6")
    echo -e "\033[0;32m system sync : \033[0m"
    exit

    source ./delete.sh
  ;;
"3")

    echo -e "\033[0;32m Deleteing update file! \033[0m";
    rm update.zip

    source ./delete.sh
  ;;
"7")
    echo -e "\033[0;32m Rebooting Device !Have a good day! \033[0m";
    termux-adb reboot

    source ./delete.sh
  ;;
"4")
    echo -e "\033[0;32m Back to Diractory ! \033[0m";
    cd /data/fota

    source ./delete.sh
  ;;
"5")
    
  echo -e "\033[0;32m Deleteing update folder! \033[0m";
    rmdir downloaded

source ./delete.sh
  ;;
"8")
    echo -e "\033[0;32m Back to Main Page! \033[0m";
    ./f220b.sh

    source ./delete.sh
  ;;
  *)
    echo -e '\033[0;31m Script execution aborted. \033[0m';
    exit 1
  ;;
esac


