rm -R -f $1
mkdir $1
cd $1
repo init -u git://github.com/PecanCM/android.git -b $1
repo sync
git clone git://github.com/PecanCM/android_device_lge_p350.git -b $1 device/lge/p350
git clone git://github.com/PecanCM/cm_vendor_lge.git -b $1 vendor/lge
mkdir kernel
#git clone git://github.com/CyanogenMod/lge-kernel-iproj.git -b $1 kernel/lge/p350
#git clone http://github.com/androidarmv6/android_kernel_lge_msm7x27-3.0.x.git -b 3.0.8 kernel/lge/p350
git clone git://github.com/PecanCM/lge-kernel-pecan.git -b android-msm-2.6.35-jb kernel/lge/p350
cd vendor/cm
./get-prebuilts
cd ../..
cp device/lge/p350/p350.mk p350.bak
sed 's/en_GB/es_ES/' p350.bak > device/lge/p350/p350.mk
#git clone -b $1 https://github.com/PecanCM/android_hardware_qcom_display-legacy hardware/qcom/display-legacy
make clean
make update-api
#. build/envsetup.sh && brunch p350