WRITE-HOST "Choose and option"
WRITE-HOST "1. Show Date"
WRITE-HOST "2. Show Process
WRITE-HOST "3. Exit"
$choice = Read-Host "Enter your choice"
switch ($choice) {
    "1" { Get-Date }
    "2" { Get-Process }
    "3" { Write-Host "Goodbye!" }
    default { Write-Host "Invalid choice" }
}