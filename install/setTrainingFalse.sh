#!/bin/bash
# This script sets the Test actor in the EnergyPlus examples to false.
# Three files have the Test actor. Those files are EnergyPlus examples files.
cd ../examples/
for file in `find -name '*.xml'`; do
 if grep "trainingMode" "$file"; then
   echo Found "trainingMode in: " $file 
   sed -i 's/<property name="trainingMode" class="ptolemy.actor.parameters.SharedParameter" value="true">/<property name="trainingMode" class="ptolemy.actor.parameters.SharedParameter" value="false">/g' $file
 fi 
done
