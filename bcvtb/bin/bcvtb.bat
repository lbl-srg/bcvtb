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
pushd %binDir%\..
call bin\setenv.bat
pushd %curDir%

rem ------------------------------------------------------------------
rem Call Ptolemy
:RUNPT
rem If %PTII% is not set by the user, then it was set 
rem by bin\setenv.bat to %BCVTB_HOME%\lib\ptII
set myClassPath="%PTII%";"%PTII%\lbnl\demo\demo.jar";"%PTII%\ptolemy\domains\ct\ct.jar";"%PTII%\doc\docConfig.jar";"%PTII%\doc\codeDoc.jar";"%PTII%\lib\diva.jar";"%PTII%\ptolemy\ptsupport.jar";"%PTII%\ptolemy\vergil\vergil.jar";"%PTII%\ptolemy\domains\sdf\sdf.jar";"%PTII%\ptolemy\domains\modal\modal.jar";"%PTII%\ptolemy\domains\fsm\fsm.jar"

if "%1" == "-runThenExit" goto PTEXE
@set app=ptolemy.vergil.VergilApplication
@set args=%*
goto RUN

:PTEXE
@set app=ptolemy.actor.gui.PtExecuteApplication
@set args=%2 %3 %3

:RUN
java -classpath %myClassPath% %app% -bcvtb %args%
