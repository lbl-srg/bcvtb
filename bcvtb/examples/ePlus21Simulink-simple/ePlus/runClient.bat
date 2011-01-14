@echo off
rem =========================================================
rem Batch file to run EnergyPlus from the BCVTB
rem
rem MWetter@lbl.gov                               2008-04-25
rem =========================================================

rem === Copying files
echo Copying %ENERGYPLUS_DIR%\bin-cygwin\Energy+.idd > simulation.log
rem Energy+idd must be in quotes because of plus sign. Else copy fails.
copy "%ENERGYPLUS_DIR%\bin-cygwin\Energy+.idd" "Energy+.idd"
echo Copying %ENERGYPLUS_DIR%\weatherdata\%2.epw >> simulation.log
copy %ENERGYPLUS_DIR%\weatherdata\%2.epw %2.epw 

rem === Calling EnergyPlus
echo Calling RunEPlus.bat >> simulation.log
cmd /c "RunEPlus.bat %1 %2"

rem === Deleting files
echo Deleting weather file %2.epw >> simulation.log
del %2.epw  >> simulation.log

rem === Closing shell
rem To prevent this window from closing after the simulation,
rem remove the line below
exit
