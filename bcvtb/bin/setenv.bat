@echo off
rem ------------------------------------------------------------------
rem Batch file that sets environment variables for BCVTB.
rem This file need to be called each time when the BCVTB is used.
rem The file need to be executed from the top-level directory of the 
rem BCVTB, otherwise an error message will be written.
rem
rem MWetter@lbl.gov                                         2009-06-18
rem ------------------------------------------------------------------


rem ------------------------------------------------------------------
rem    Declare environment variables
rem    This section may need to be adjusted by the user
rem ------------------------------------------------------------------
@set BCVTB_EP_VERSION=3.1
@set ENERGYPLUS_DIR=%cd%\clients\ep-%BCVTB_EP_VERSION%
@set BCVTB_DYMOLA_BIN=C:\Program Files\Dymola 7.2\bin\Dymola.exe

rem ------------------------------------------------------------------
rem    Do not make any modifications below 
rem ------------------------------------------------------------------

rem ---------------------------------------------------
rem - Make sure we are called form top-level directory
rem ---------------------------------------------------
if exist bin\setenv.bat goto CHECKPT
echo Error: The file setenv.bat need to be called from
echo        the top-level directory of the BCVTB, and
echo        not from %cd%
echo        Exit with error.
goto END

:CHECKPT
rem ---------------------------------------------------
rem --------------- Ptolemy ---------------------------
rem ---------------------------------------------------
if exist %PTII%\copyright.txt goto SETVARS
echo Error: Environment variable PTII does not point to Ptolemy.
echo        File %PTII%\bin\vergil does not exist.
echo        You need to set the PTII environment variable
echo        so that PTII\bin\vergil exist.
echo        Exit with error.
goto END

:SETVARS
rem ---------------------------------------------------
rem ---- Generate file with environment variables------
rem ---------------------------------------------------
if not exist "%cd%\env-var.bat" java -jar "%cd%\lib\config\build\jar\GetEnvironmentVariables.jar"
if exist     "%cd%\env-var.bat" call "%cd%\env-var.bat"

rem ---------------------------------------------------
rem ---- Copy java files to PT directory --------------
rem ---------------------------------------------------
if exist "%PTII%" xcopy "%cd%\lib\LBNLActors\*.class" "%PTII%\LBNLActors" /e /i /q /y


:CHECKIFORT
rem ---------------------------------------------------
rem ---------------Fortran Compiler -------------------
rem ---------------------------------------------------

rem Set Fortran environment variables. IFortVars.bat also sets the C++
rem variables
rem if exist "%BCVTB_IFORT_BAT%" call "%BCVTB_IFORT_BAT%"

if exist "%BCVTB_IFORT_BAT%" (
    call "%BCVTB_IFORT_BAT%"
    goto CHECKVC
)

echo Warning: Did not find environment variable for Fortran.
echo          You will not be able to compile Fortran source code.
echo          You will be able to use compiled code.
echo          Fortran batch file is set to %BCVTB_IFORT_VAR_BAT%
echo          If Fortran is installed, adjust the file %cd%\env-var.bat

:CHECKVC
rem --------------------------------------------------
rem ------------- C++ compiler -----------------------
rem --------------------------------------------------
rem The next command sets VCINSTALLDIR if available
if defined BCVTB_VS_BAT call "%BCVTB_VS_BAT%"
if exist "%VCINSTALLDIR%\vcvarsall.bat" (
    call "%VCINSTALLDIR%\vcvarsall.bat"
    goto CHECKANT
)
echo Warning: Environment variable BCVTB_VCDIR does not point to Visual C++ directory.
echo          You will not be able to compile source code.
echo          You will be able to use compiled code.
echo          C++ batch file is set to %BCVTB_VCDIR%
echo          If C++ is installed, adjust the file %cd%\env-var.bat

:CHECKANT
rem --------------------------------------------------
rem --------------- Apache Ant -----------------------
rem --------------------------------------------------
if defined ANT_HOME @set BCVTB_ANT_BIN=%ANT_HOME%\bin
if exist "%BCVTB_ANT_BIN%" goto SETVARS
echo Warning: Environment variable ANT_BIN does not point to Apache Ant.
echo          You will not be able to compile source code or run unit tests.
echo          You will be able to use compiled code.
echo          Apache Ant binary directory is set to %BCVTB_ANT_BIN%
echo          If Apache Ant is installed, adjust the file %cd%\env-var.bat


:SETVARS
@set BCVTB_HOME=%CD%
@set BCVTB_OS=windows 
@set PATH=%BCVTB_ANT_BIN%;%PTII%\bin;%cd%\lib\util;%ENERGYPLUS_DIR%\bin-windows;%cd%\lib-windows\libxml2-2.7.3.win32\bin;%cd%\lib-windows\iconv-1.9.2.win32\bin;%PATH%
@set CLASSPATH=%cd%\lib;%PTII%;%CLASSPATH%;%cd%\lib\cpptasks.jar

rem --------------------------------------------------
rem --------------- Dymola ---------------------------
rem --------------------------------------------------

rem BCVTB_myDoc will point to something like C:\Documents and Settings\USERNAME\My Documents
set regpath=HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders
set regdata=Personal
set BCVTB_myDoc=null
rem delims is a tab
FOR /F "tokens=3* delims=	" %%i IN ('reg query "%regpath%" /v %regdata%') DO (
 SET BCVTB_myDoc=%%i
)
set BCVTB_dymWor=%BCVTB_myDoc%\Dymola
set BCVTB_dymWor=%BCVTB_dymWor:\=/%
if not exist "%BCVTB_myDoc%\Dymola" goto WRITECONFIG
if exist "%BCVTB_DYMOLA_BIN%"       goto WRITECONFIG
echo Warning: Found Dymola working directory but 
echo          did not find Dymola binary.
echo          Expected %BCVTB_DYMOLA_BIN%

:WRITECONFIG
rem --------------------------------------------------
rem -----Generate configuration file for ant ---------
rem --------------------------------------------------
echo // This file was autogenerated on %date% > build.properties
echo // Changes to this file will be lost whenever >> build.properties
echo // %0 is executed.  >> build.properties
if exist "%BCVTB_IFORT_BAT%" echo haveIfort=true >> build.properties

echo %PATH% | find "MATLAB" > NUL
IF ERRORLEVEL 0 echo haveMatlab=true >> build.properties

if exist "%ENERGYPLUS_DIR%" echo haveEnergyPlus=true >> build.properties

if exist "%BCVTB_myDoc%\Dymola" (
   echo path.dymola.work=%BCVTB_dymWor% >> build.properties
   echo haveDymola=true >> build.properties
)


:END
