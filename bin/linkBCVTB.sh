#!/bin/bash
#echo The BCVTB version is installed in $1.
#echo Remove any existing symbolic link for /usr/local/lib/libbcvtb.dylib
rm -rf /usr/local/lib/libbcvtb.dylib
#echo Create new symbolic link for /usr/local/lib/libbcvtb.dylib
ln -s $1"/lib/util/libbcvtb.dylib" "/usr/local/lib/libbcvtb.dylib"