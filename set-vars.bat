@echo off
rem **** Setup
set DTP_PROJECT=Parabank-v3
set BUILD_ID=PARABANK3-%date:~10,4%%date:~4,2%%date:~7,2%-%BUILD_NUMBER%
set RUN_TIME=%date:~10,4%%date:~4,2%%date:~7,2%-%time:~0,2%%time:~3,2%

set PARABANK-TOMCAT=C:\tomcat-8.0.26-parabank

echo ===================================================================
echo DTP Project: %DTP_PROJECT%
echo ===================================================================
