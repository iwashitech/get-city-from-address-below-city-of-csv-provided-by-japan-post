@echo off

convert_csv_for_janome.sh

set /P USR_INPUT_STR="ken_all.csv, ken_all_utf8.csv, ken_all.zip���폜����ꍇ0����͂��Ă��������F"

if %USR_INPUT_STR% == 0 (
  cd %USERPROFILE%\Desktop
  del ken_all.csv
  del ken_all_utf8.csv
  del ken_all.zip
)

PAUSE

@echo on