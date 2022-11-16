$kasutajad = Get-LocalUser | select Name
foreach ($kasutaja in $kasutajad){
Write-Output "kasutaja andmed"