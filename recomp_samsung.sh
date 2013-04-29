prebuilts/misc/linux-x86/ccache/ccache -M 50G
repo sync -j4 -c
cd device/samsung/msm7x27a-common
git pull
cd ../../..
cd vendor/samsung
git pull
cd ../..
cd kernel/samsung/msm7x27a
git pull
cd ../../..
cd device/samsung/jena
git pull
cd ../../..
cd device/samsung/jenad
git pull
cd ../../..
cd hardware/atheros/wifi/libs
git pull
cd ../../../..
vendor/cm/get-prebuilts
#exit 0
cp device/lge/p350/p350.mk p350.mk 
# Español
. build/envsetup.sh && brunch jena
rename s/.zip/-es_ES.zip/ out/target/product/jena/cm-*-UNOFFICIAL-p350.zip
lftp -d < ftp.txt
rm out/target/product/jena/cm-*.zip
exit 0
# Alemán
cp device/lge/p350/p350.mk p350.bak
sed 's/en_GB/de_DE/' p350.bak > device/lge/p350/p350.mk
brunch p350
rename s/.zip/-de_DE.zip/ out/target/product/p350/cm-*-UNOFFICIAL-p350.zip
lftp -d < ftp.txt
cp p350.mk device/lge/p350/p350.mk
rm out/target/product/p350/cm-*-UNOFFICIAL-p350.zip
# Italiano
cp device/lge/p350/p350.mk p350.bak
sed 's/en_GB/it_IT/' p350.bak > device/lge/p350/p350.mk
brunch p350
rename s/.zip/-it_IT.zip/ out/target/product/p350/cm-*-UNOFFICIAL-p350.zip
lftp -d < ftp.txt
cp p350.mk device/lge/p350/p350.mk
rm out/target/product/p350/cm-*-UNOFFICIAL-p350.zip
# Indonesio
cp device/lge/p350/p350.mk p350.bak
sed 's/en_GB/id_ID/' p350.bak > device/lge/p350/p350.mk
brunch p350
rename s/.zip/-id_ID.zip/ out/target/product/p350/cm-*-UNOFFICIAL-p350.zip
lftp -d < ftp.txt
cp p350.mk device/lge/p350/p350.mk
rm out/target/product/p350/cm-*-UNOFFICIAL-p350.zip
# Polaco
cp device/lge/p350/p350.mk p350.bak
sed 's/en_GB/pl_PL/' p350.bak > device/lge/p350/p350.mk
brunch p350
rename s/.zip/-pl_PL.zip/ out/target/product/p350/cm-*-UNOFFICIAL-p350.zip
lftp -d < ftp.txt
cp p350.mk device/lge/p350/p350.mk
rm out/target/product/p350/cm-*-UNOFFICIAL-p350.zip
# Portuges
cp device/lge/p350/p350.mk p350.bak
sed 's/en_GB/pt_BR/' p350.bak > device/lge/p350/p350.mk
brunch p350
rename s/.zip/-pt_BR.zip/ out/target/product/p350/cm-*-UNOFFICIAL-p350.zip
lftp -d < ftp.txt
cp device/lge/p350/p350.mk p350.bak
sed 's/pt_BR/en_GB/' p350.bak > device/lge/p350/p350.mk
cp p350.mk device/lge/p350/p350.mk
rm out/target/product/p350/cm-*-UNOFFICIAL-p350.zip
# Checo
cp device/lge/p350/p350.mk p350.bak
sed 's/en_GB/hr_HR/' p350.bak > device/lge/p350/p350.mk
brunch p350
rename s/.zip/-hr_HR.zip/ out/target/product/p350/cm-*-UNOFFICIAL-p350.zip
lftp -d < ftp.txt
cp device/lge/p350/p350.mk p350.bak
sed 's/pt_BR/en_GB/' p350.bak > device/lge/p350/p350.mk
rm out/target/product/p350/cm-*-UNOFFICIAL-p350.zip