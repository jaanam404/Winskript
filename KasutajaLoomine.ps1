$KasutajaParool = ConvertTo-SecureString "Parool1" -AsPlainText -Force
$Eesnimi = Read-Host "Sisesta oma eesnimi"
$Perenimi = Read-Host "Sisesta oma perenimi"
$Kasutajanimi = $Eesnimi.ToLower() + " " + $Perenimi.ToLower()
$Taisnimi = $Eesnimi + " " + $Perenimi
$Kirjeldus = "Lokaalne konto- " + $Kasutajanimi
Write-Output "Loodav kasutaja on $($Kasutajanimi)"
$ErrorActionPreference = "SilentlyContinue"
New-LocalUser $Kasutajanimi -Password $KasutajaParool -FullName $Taisnimi -Description $Kirjeldus
if(!$?) {
Write-Output "Tekkinud probleem kasutaja loomisega"
}
$ErrorActionPreference = "Stop"
