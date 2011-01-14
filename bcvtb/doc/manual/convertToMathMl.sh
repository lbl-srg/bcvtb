#!/bin/bash
# Run as ./convertToMathMl.sh "\begin{equation} \frac{a}{b} \in \mathbf A \end{equation}"
###############################################
TMP=`mktemp -t convertToMathMl.sh.XXXXXX`
trap "rm $TMP* 2>/dev/null" 0
echo "$1" > tempIn.xml
java -jar mathtoweb.jar -df tempOut.xml tempIn.xml
cat tempOut.xml
rm tempOut.xml
rm tempIn.xml
