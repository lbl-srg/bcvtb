#!/bin/bash
#######################################################################
# This script updates the BCVTB files from BCVTB 0.4.0 to BCVTB 0.5.0
#
# Usage: ./updateFiles.sh examples
#
# mwetter@lbl.gov                                            2009-06-04
#######################################################################

# Check for examples directory
if [ ! -d "examples" ]; then
    echo "Error: Did not find directory 'examples'"
    echo "       This script need to be run from the BCVTB root directory."
fi

# Create temporary file
TMP=${TMPDIR:-/tmp}/updateFiles.sh.$$
trap "rm $TMP* 2>/dev/null" EXIT

# update xml files
for ff in `find examples -name '*.cfg'`; do
# Update file
    sed -e 's/dayschedule/schedule-day/g' $ff > $TMP
    mv $TMP $ff
done

for ff in `find examples -name '*.idf'`; do
# Update idf
    sed -e 's/Schedule:Day:Dynamic/ExternalInterface:Schedule/g' $ff > $TMP
    mv $TMP $ff
    sed -e 's/SCHEDULE:DAY:DYNAMIC/ExternalInterface:Schedule/g' $ff > $TMP
    mv $TMP $ff
    sed -e 's/PtolemyLink/PtolemyServer/g' $ff > $TMP
    mv $TMP $ff
    sed -e 's/BCVTB,/ExternalInterface,/g' $ff > $TMP
    mv $TMP $ff
done

