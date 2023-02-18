@echo off
Title Bundle cfast for Windows


:: installation settings settings

set installerbase=cfast7_installer
set distname=cfast7

:: VVVVVVVVVVVVVVVVV shouldn't need to change anything below VVVVVVVVVVVVVVV

set CURDIR=%CD%

:: define cfast_root

cd ..\..\..\cfast
set cfast_root=%CD%

:: define smv_root

cd ..\smv
set smv_root=%CD%
cd %CURDIR%

set git_drive=c:
%git_drive%

set DISTDIR=%cfast_root%\Utilities\for_bundle\scripts\BUNDLEDIR\%installerbase%
set bundleinfo=%cfast_root%\Utilities\for_bundle\scripts\bundleinfo

call Create_Install_Files.bat

copy "%bundleinfo%\wrapup_cfast_install.bat"           "%DISTDIR%\wrapup_cfast_install.bat"   > Nul 2>&1

cd %DISTDIR%
wzzip -a -r -P ..\%installerbase%.zip * ..\SMV6   > Nul 2>&1

:: create an installation file from the zipped bundle directory

echo ***Creating installer

cd %DISTDIR%\..
echo Setup is about to install CFAST 7  > %bundleinfo%\message.txt
echo Press Setup to begin installation. > %bundleinfo%\main.txt
if exist %installerbase%.exe erase %installerbase%.exe
wzipse32 %installerbase%.zip -runasadmin -a %bundleinfo%\about.txt -st"cfast 7 Setup" -d "c:\Program Files\firemodels\%distname%" -c wrapup_cfast_install.bat

echo ***Copying %installerbase%.exe to %cfast_root%\Utilities\uploads\cftest.exe
copy %installerbase%.exe %cfast_root%\Utilities\uploads\cftest.exe   > Nul 2>&1


echo ***cfast bundle built

cd %CURDIR%


