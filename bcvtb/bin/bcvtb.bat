@echo off
rem ------------------------------------------------------------------
rem Batch file that starts the BCVTB
rem
rem MWetter@lbl.gov                                         2009-07-10
rem ------------------------------------------------------------------
rem Set environment variables if not already set
if defined BCVTB_OS goto :RUNPT
set curDir=%CD%
set binDir=%~dp0
pushd "%binDir%\.."
call bin\setenv.bat
pushd "%curDir%"

rem ------------------------------------------------------------------
rem Call Ptolemy
:RUNPT
rem If %PTII% is not set by the user, then it was set 
rem by bin\setenv.bat to %BCVTB_HOME%\lib\ptII

@set commandline=%*
IF NOT CMDEXTVERSION 2 SET commandline=%commandline:~1%
java -jar "%BCVTB_HOME%/bin/BCVTB.jar" %commandline%
