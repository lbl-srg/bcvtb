#!/bin/bash
VER=clients/ep-4.0
ZIPFil=ep-4.0.zip

curDir=`pwd`

TMP=${TMPDIR:-/tmp}/zipEnergyPlus.sh.$$
trap "rm $TMP* 2>/dev/null" EXIT
rm -f    ${ZIPFil}
rm -rf   ${TMP}/${VER}
mkdir -p ${TMP}/${VER}
cd       ${TMP}/${VER}
svn export https://corbu.lbl.gov/svn/bcvtb/trunk/bcvtb/${VER}/WeatherData
svn export https://corbu.lbl.gov/svn/bcvtb/trunk/bcvtb/${VER}/bin-linux
svn export https://corbu.lbl.gov/svn/bcvtb/trunk/bcvtb/${VER}/bin-windows
svn export https://corbu.lbl.gov/svn/bcvtb/trunk/bcvtb/${VER}/bin-mac
echo "********************************"
echo "*** Enter password for zip file:"
cd -
cd ${TMP}
zip -r -P ePlb40s -e ${ZIPFil} clients
mv ${ZIPFil} ${curDir}
cd -
rm -rf   ${TMP}/${VER}
echo "Generated ${curDir}/${ZIPFil}"
 