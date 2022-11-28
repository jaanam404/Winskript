


$KasutajaParool = ConvertTo-SecureString $newPassword -AsPlainText -Force
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


Function GenerateStrongPassword ([Parameter(Mandatory=$true)][int]$PasswordLenght)
{
    Add-Type -AssemblyName System.Web
    $PassComplexCheck = $false
    do {
        $newPassword=[System.Web.Security.Membership]::GeneratePassword($PasswordLenght,1)
        If ( ($newPassword -cmatch "[A-Z\p{Lu}\s]") `
        -and ($newPassword -cmatch "[a-z\p{Ll}\s]") `        -and ($newPassword -match "[\d]") `        -and ($newPassword -match "[^\w]")        )        {            $PassComplexCheck=$true        }        } While ($PassComplexCheck -eq $false)    return $newPassword}
GenerateStrongPassword (8) | Out-File -FilePath .\Desktop\Output.txt
Get-Content -Path .\Desktop\Output.txt


