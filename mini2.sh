#export http_proxy=http://proxy.aemet.es:3128
rm -R -f samsung
mkdir samsung
cd samsung
repo init -u http://github.com/CyanogenMod/android.git -b cm-10.1
repo sync -j4 -c
git clone git://github.com/TheWhisp/android_device_samsung_msm7x27a-common.git -b cm-10.1 device/samsung/msm7x27a-common
git clone git://github.com/TheWhisp/proprietary_vendor_samsung_msm7x27a.git -b jellybean vendor/samsung
git clone git://github.com/TheWhisp/android_kernel_samsung_msm7x27a.git -b jellybean kernel/samsung/msm7x27a
git clone git://github.com/TheWhisp/android_device_samsung_jena.git -b jellybean device/samsung/jena
git clone git://github.com/TheWhisp/android_device_samsung_s6500d.git -b jellybean device/samsung/jenad
git clone https://github.com/legaCyMod/android_hardware_atheros_wifi_libs.git -b jellybean hardware/atheros/wifi/libs
cp ../recomp_samsung.sh 
cp ../ftp_samsung.txt ftp.txt