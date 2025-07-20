#!/bin/bash
trap "echo -e '\033[0;31m Script execution aborted. \033[0m'; exit 1" INT

echo -e "\033[0;33m
-----------------------------------------
   * Repair A2Z F220B Root Tool *
-----------------------------------------
        What do you want to do?
-----------------------------------------
  1. Flash Recovery 
  2. Flash OminiSD 2019 Firmware
  3. Enable Adb & Root
  4. Check adb Devices
  5. Check EDL Device
------------------------------------------
(Press Any key to Exit or input your choice.)
\033[0m";

read -p "Choice: " flasher

case $flasher in

  "4")
    echo -e "\033[0;32m adb device list: \033[0m"
    termux-adb devices

    source ./f220b.sh
  ;;
  "5")
    echo -e "\033[0;32m EDL Device list: \033[0m"
    termux-usb -l

    source ./f220b.sh
  ;;
  "1")
    echo -e "\033[0;32m Flashing Philz Twrp Recovery ! \033[0m";
    sudo ./qdl --debug --storage emmc --include /storage/emulated/0/qdl-flash/recovery /storage/emulated/0/qdl-flash/recovery/prog_emmc_firehose_8909_ddr.mbn /storage/emulated/0/qdl-flash/recovery/rawprogram0.xml /storage/emulated/0/qdl-flash/recovery/patch0.xml

    source ./f220b.sh
  ;;
  "2")
    echo -e "\033[0;32m Flashing ominisd ! \033[0m";
    sudo ./qdl --debug --storage emmc --include /storage/emulated/0/qdl-flash/ominisd /storage/emulated/0/qdl-flash/ominisd/prog_emmc_firehose_8909_ddr.mbn /storage/emulated/0/qdl-flash/ominisd/rawprogram_unsparse.xml

    source ./f220b.sh

    ;;
"3")
    echo -e "\033[0;32m Enabling Adb & Root ! \033[0m";
   sudo ./qdl --debug --storage emmc --include /storage/emulated/0/qdl-flash/adbroot /storage/emulated/0/qdl-flash/adbroot/prog_emmc_firehose_8909_ddr.mbn /storage/emulated/0/qdl-flash/adbroot/rawprogram0.xml /storage/emulated/0/qdl-flash/adbroot/patch0.xml

    source ./f220b.sh
      ;;
  *)
    echo -e '\033[0;31m Script execution aborted. \033[0m';
    exit 1
  ;;
esac

