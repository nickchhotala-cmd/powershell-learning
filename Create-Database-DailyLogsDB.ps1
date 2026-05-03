# SQL Server connection info
$server = "RBHQNCHHOTAL-L"          # or your host name
$databaseName = "DailyLogs"

# SQL command to create database if it doesn't exist
$sql = @"
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = '$databaseName')
BEGIN
    CREATE DATABASE [$databaseName];
END
"@

# Run SQL command
Invoke-Sqlcmd -ServerInstance $server -Query $sql

Write-Host "Database '$databaseName' checked/created successfully."