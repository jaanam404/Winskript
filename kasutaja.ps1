echo "Sisesta kasutajanimi kujul eesnimi.perenimi:"
$kasutaja = Read-Host

$KasutajaParool = ConvertTo-SecureString "Parool1!" -AsPlainText -Force
New-LocalUser "$kasutaja" -Password $KasutajaParool -FullName $kasutaja -Description "Lokaalne kasutaja"