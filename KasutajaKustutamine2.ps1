echo "Kustutan kasutaja"
$Eesnimi = Read-Host "Sisesta kasutaja eesnimi"
$Perenimi = Read-Host "Sisesta kasutaja perenimi"
$Taisnimi = $Eesnimi + " " + $Perenimi
Remove-LocalUser $Taisnimi -Verbose


