echo "Sisesta kasutajanimi, keda on vaja kustutada kujul eesnimi.perenimi:"
$kasutaja = Read-Host
Remove-LocalUser $kasutaja -Verbose