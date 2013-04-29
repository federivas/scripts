#export http_proxy=http://proxy.aemet.es:3128
rm -R -f cm-10.1
mkdir cm-10.1
cd cm-10.1
repo init -u http://github.com/PecanCM/android.git -b cm-10.1
repo sync -j4 -c
git clone http://github.com/PecanCM/android_device_lge_p350.git -b cm-10.1 device/lge/p350
git clone http://github.com/PecanCM/cm_vendor_lge.git -b cm-10.1 vendor/lge
#mkdir kernel
git clone https://github.com/PecanCM/lge-kernel-pecan -b jb_chocolate kernel/lge/p350
cp ../recomp_cm-10.1.sh .
cp ../ftp_cm-10.1.txt ftp.txt