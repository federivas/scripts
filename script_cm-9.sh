#export http_proxy=http://proxy.aemet.es:3128
rm -R -f cm-9
mkdir cm-9
cd cm-9
repo init -u http://github.com/CyanogenMod/android.git -b ics
repo sync -j4 -c
git clone http://github.com/PecanCM/android_device_lge_p350.git -b ics device/lge/p350
git clone http://github.com/PecanCM/cm_vendor_lge.git -b ics vendor/lge
#mkdir kernel
git clone https://github.com/PecanCM/lge-kernel-pecan -b jb_chocolate kernel/lge/p350
#cp ../recomp_cm-10.1.sh .
#cp ../ftp_cm-10.1.txt ftp.txt