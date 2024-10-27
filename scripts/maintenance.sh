#!/bin/bash

set -eox

database_restore=./ConanSandbox/Saved/game-restore.db
database_real=./ConanSandbox/Saved/game.db

if [ -f $database_restore ]; then
	rm $database_real
	mv $database_restore $database_real
fi;

# ./ConanSandbox/Saved/sqlite3 $database_real < ./443030/ConanSandbox/Saved/migrations/reset_building_decay.sql
