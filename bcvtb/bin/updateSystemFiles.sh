#!/bin/bash
#######################################################################
# This script updates the Ptolemy files from BCVTB 0.1.1 to BCVTB 0.2.0
#
# Usage: ./updateSystemFiles.sh system.xml
#
# mwetter@lbl.gov                                            2009-06-04
#######################################################################
if [ $# == "0" ]; then
    echo "Error: First argument must be xml file, such as system-windows.xml"
    exit 1
fi
# Create temporary file
TMP=${TMPDIR:-/tmp}/updateSystemFiles.sh.$$
trap "rm $TMP* 2>/dev/null" EXIT

# Update file
sed -e 's/name="command" class="ptolemy.data.expr.Parameter"/name="programName" class="ptolemy.data.expr.FileParameter"/g' $1 > $TMP
mv $TMP $1

sed -e 's/name="workingDirectory" class="ptolemy.data.expr.Parameter" value="&quot;.&quot;">/name="workingDirectory" class="ptolemy.data.expr.Parameter" value=".">/g' $1 > $TMP
mv $TMP $1


sed -e 's/property name="arguments" class/property name="programArguments" class/g' $1 > $TMP
mv $TMP $1


##sed -e 's///g' $1 > $TMP
##mv $TMP $1


rm -f $TMP