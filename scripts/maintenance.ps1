$savedir = Split-Path -Path $MyInvocation.MyCommand.Definition -Parent
$database_restore = Join-Path $savedir "game-restore.db"
$database_real = Join-Path $savedir "game.db"

# Check if restore database exists, and replace the real database if it does
if (Test-Path $database_restore) {
    if (Test-Path $database_real) {
        Remove-Item -Path $database_real -Force
    }
    Move-Item -Path $database_restore -Destination $database_real
}

# Run database migrations
# & "$savedir\sqlite3.exe" $database_real "<" (Join-Path $savedir "migrations\reset_building_decay.sql")
