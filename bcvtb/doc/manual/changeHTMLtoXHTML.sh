#!/bin/bash
#################################################
# This script changes in the directory
# www all file extensions from html to xhtml.
# It also changes all references to these files
# in *.html
#
# This is needed since Saxon writes files in html,
# but for a browser to render mathml, the extension
# needs to be xhtml.
#
#################################################
cd www
for ff1 in `ls *.html`; do
    bas1=`basename $ff1 .html`
    mv $bas1.html $bas1.xhtml
done
filLis=`ls *.xhtml`
for ff1 in $filLis; do
    bas1=`basename $ff1 .xhtml`
    echo "Updating $ff1"
    for ff2 in $filLis; do
	bas2=`basename $ff2 .xhtml`
	sed -e "s/${bas2}.html/${bas2}.xhtml/g" $bas1.xhtml > out.tmp
	# Firefox has problems with xmlns="", so we delete it 
	sed -e "s/xmlns=\"\"//g" out.tmp > $bas1.xhtml
#	mv out.tmp $bas1.xhtml 
    done
done
rm out.tmp
