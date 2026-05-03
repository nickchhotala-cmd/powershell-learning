Write-Host "Choose an option:"
Write-Host "1. Show date"
Write-Host "2. Show processes"
Write-Host "3. Exit"

$choice = Read-Host "Enter your choice"

switch ($choice) {
    "1" { Get-Date }
    "2" { Get-Process }
    "3" { Write-Host "Goodbye!" }
    default { Write-Host "Invalid choice" }
}