#!/bin/bash
####################################################################
# Post installation file 
# The first argument, if present, must be the installation 
# directory path.
#
# MWetter@lbl.gov                             2008-04-23
####################################################################
function printManualInstall(){
	echo "You need to install Ptolemy II manually as follows"
	echo "cd [directory to bcvtb]"
	echo "On linux: wget http://ptolemy.berkeley.edu/ptolemyII/ptII7.0/ptII7.0.1.src.tar.gz"
	echo "On Mac  : curl http://ptolemy.berkeley.edu/ptolemyII/ptII7.0/ptII7.0.1.src.tar.gz -o ptII7.0.1.src.tar.gz"
	echo "tar xzf ptII7.0.1.src.tar.gz"
	echo "rm ptII7.0.1.src.tar.gz"
	echo "source ./setenv.sh"
        echo "make configPt"
}
echo "Starting postInstall.sh $1"
############################################################
# If an argument is provided, change to the directory whose name is
# equal to the argument
if [ "$#" != "0" ]; then
    if [ -d "$1" ]; then
	cd "$1"
    else
	echo "Error in postInstall.sh: argument is '$1'"
	echo "This directory does not exist."
	printManualInstall
	echo "*** Exit with error"
	exit 1
    fi
fi
echo "Current directory is `pwd`"
############################################################
# Check that we are in the correct directory
if [ ! -e "setenv.sh" ]; then
	echo "Error in postInstall.sh:"
	echo "Current directory is `pwd`"
	echo "This directory does not contain the expected file setenv.sh."
	printManualInstall
	echo "*** Exit with error"
	exit 2
fi
############################################################
# Downloading files
echo "*** Downloading files"
case `uname` in
    Linux)
	wget http://ptolemy.berkeley.edu/ptolemyII/ptII7.0/ptII7.0.1.src.tar.gz
	tar xzf ptII7.0.1.src.tar.gz
	rm ptII7.0.1.src.tar.gz
	;;
    Darwin)
# Mac does not ship with wget, so we use curl
	curl http://ptolemy.berkeley.edu/ptolemyII/ptII7.0/ptII7.0.1.src.tar.gz -o ptII7.0.1.src.tar.gz
	tar xzf ptII7.0.1.src.tar.gz
	rm ptII7.0.1.src.tar.gz
	echo "current dir is `pwd`"
        ls /Users/mwetter/temp
	;;*)
    	echo "postInstall.sh: Unknown operating system: `uname`"
	exit 3
esac
############################################################
# Begin installation
echo "*** Configuring and compiling files"
source ./setenv.sh
make configPt
if [ "$?" == "0" ]; then
    echo "*** Configuration finished"
else
    echo "*** Configuration failed"
    printManualInstall
    echo "*** Exit with error"
    exit 4
fi