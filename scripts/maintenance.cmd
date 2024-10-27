@echo off

set database_restore=./ConanSandbox/Saved/game-restore.db
set database_real=./ConanSandbox/Saved/game.db


if exist %database_restore% (del %database_real% && move %dabase_restore% %database_real%)


:: ./ConanSandbox/Saved/sqlite3.exe %database_real% < ./443030/ConanSandbox/Saved/migrations/reset_building_decay.sql
