prebuilt/linux-x86/ccache/ccache -M 50G
repo sync -j4 -c
cd device/lge/p350
git pull
cd ../../..
cd vendor/lge
git pull
cd ../..
cd kernel/lge/p350
git pull
cd ../../..
vendor/cm/get-prebuilts
cp p350.mk device/lge/p350/p350.mk
# Español
cp device/lge/p350/p350.mk p350.bak
sed 's/en_GB/es_ES/' p350.bak > device/lge/p350/p350.mk
. build/envsetup.sh && brunch p350
rename s/.zip/-es_ES.zip/ out/target/product/p350/cm-*-UNOFFICIAL-p350.zip
lftp -d < ftp.txt
# Alemán
cp device/lge/p350/p350.mk p350.bak
sed 's/es_ES/de_DE/' p350.bak > device/lge/p350/p350.mk
brunch p350
rename s/.zip/-de_DE.zip/ out/target/product/p350/cm-*-UNOFFICIAL-p350.zip
lftp -d < ftp.txt
# Italiano
cp device/lge/p350/p350.mk p350.bak
sed 's/de_DE/it_IT/' p350.bak > device/lge/p350/p350.mk
brunch p350
rename s/.zip/-it_IT.zip/ out/target/product/p350/cm-*-UNOFFICIAL-p350.zip
lftp -d < ftp.txt
# Indonesio
cp device/lge/p350/p350.mk p350.bak
sed 's/it_IT/id_ID/' p350.bak > device/lge/p350/p350.mk
brunch p350
rename s/.zip/-id_ID.zip/ out/target/product/p350/cm-*-UNOFFICIAL-p350.zip
lftp -d < ftp.txt
# Polaco
cp device/lge/p350/p350.mk p350.bak
sed 's/id_ID/pl_PL/' p350.bak > device/lge/p350/p350.mk
brunch p350
rename s/.zip/-pl_PL.zip/ out/target/product/p350/cm-*-UNOFFICIAL-p350.zip
lftp -d < ftp.txt
# Portuges
cp device/lge/p350/p350.mk p350.bak
sed 's/pl_PL/pt_BR/' p350.bak > device/lge/p350/p350.mk
brunch p350
rename s/.zip/-pt_BR.zip/ out/target/product/p350/cm-*-UNOFFICIAL-p350.zip
lftp -d < ftp.txt
cp device/lge/p350/p350.mk p350.bak
sed 's/pt_BR/en_GB/' p350.bak > device/lge/p350/p350.mk
