#!/bin/bash
VER=clients/ep-3.1

curDir=`pwd`
ZIPFil=ep-3.1.zip
TMP=${TMPDIR:-/tmp}/zipEnergyPlus.sh.$$
trap "rm $TMP* 2>/dev/null" EXIT
rm -f    ${ZIPFil}
rm -rf   ${TMP}/${VER}
mkdir -p ${TMP}/${VER}
cd       ${TMP}/${VER}
svn export https://corbu.lbl.gov/svn/bcvtb/trunk/bcvtb/${VER}/weatherdata
svn export https://corbu.lbl.gov/svn/bcvtb/trunk/bcvtb/${VER}/bin-linux
svn export https://corbu.lbl.gov/svn/bcvtb/trunk/bcvtb/${VER}/bin-windows
svn export https://corbu.lbl.gov/svn/bcvtb/trunk/bcvtb/${VER}/bin-mac
echo "********************************"
echo "*** Enter password for zip file:"
cd -
cd ${TMP}
zip -r -P eP31pas! -e ${ZIPFil} clients
mv ${ZIPFil} ${curDir}
cd -
rm -rf   ${TMP}/${VER}
echo "Generated ${curDir}/${ZIPFil}"
 