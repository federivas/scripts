#export http_proxy=http://proxy.aemet.es:3128
rm -R -f cm7
mkdir cm7
cd cm7
repo init -u http://github.com/PecanCM/android.git -b gingerbread
repo sync -j4 -c
git clone http://github.com/PecanCM/android_device_lge_p350.git -b gingerbread device/lge/p350
git clone http://github.com/PecanCM/cm_vendor_lge.git -b gingerbread vendor/lge
mkdir kernel
git clone https://github.com/PecanCM/lge-kernel-pecan -b android-msm-2.6.32 kernel/lge/p350
cp ../recomp_cm7.sh .
cp ../ftp_cm7.txt ftp.txt