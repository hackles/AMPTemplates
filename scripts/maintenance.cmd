@echo off

set savedir=%~dpn0
set database_restore=%savedir%\game-restore.db
set database_real=%savedir%\game.db


if exist %database_restore% (del %database_real% && move %dabase_restore% %database_real%)

date /t > ./ayyyyyyyyyyyyyyyyyyyyyyyyyyyyyy.txt

:: %savedir%\sqlite3.exe %database_real% < %savedir%\migrations\reset_building_decay.sql
