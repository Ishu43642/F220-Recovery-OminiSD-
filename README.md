<img align="right" src="f220b.jpg" width="350" alt="f220b recovery ominisd">


## F220-Recovery-OminiSD-
Install twrp Philz recovery & enable ominisd on  jio f220b Phone Using Termux ```Without PC```
(This Tool Run Only in ```arm64``` architecture Termux Supported mobile)

QDL Tool Credit:- [Gautam Great](https://github.com/GautamGreat)

Subscribe My YouTube channel 
[Repair A2Z](https://youtube.com/@repaira2z)

## installation :- 

```Install``` [termux](https://f-droid.org/repo/com.termux_118.apk) & [Termux-api](https://f-droid.org/repo/com.termux.api_51.apk) ```apk```
```console
yes | pkg update && upgrade
```
```console
pkg install termux-api
```
```console
pkg install git
```
```console
pkg install libxml2
```
```console
git clone https://github.com/Ishu43642/F220-Recovery-OminiSD-.git
```
```console
cd F220-Recovery-OminiSD-
```
```console
chmod +x qdl && chmod +x f220b.sh && chmod +x delete.sh && chmod +x disable.sh
```

# installation (only for adb option)Termux-Adb :-
[Termux-Adb Fastboot](https://github.com/nohajc/termux-adb) 

```credit :- Termux-Adb``` [nohajc](https://github.com/nohajc)

```console
bash installadb.sh
```

## Run Tool
```console
./f220b.sh
```


# Not:-
1. if your firmware is letest then first downgrade your firmwre ominisd sd not work in letest firmware (recomend version - 110119)

2. Twrp Philz recovery work in all version firmware you don't need to downgrade if you want to install recovery only

3. if you want to downgrade without pc use [Termux-QDL Flasher Tool](https://github.com/Ishu43642/QDL-Flasher)
