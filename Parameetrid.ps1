param(
$Kasutajanimi,
$Täisnimi,
$Kontokirjeldus
)
$KasutajaParool = ConvertTo-SecureString "Parool1!" -AsPlainText -Force
New-LocalUser $Kasutajanimi -Password $KasutajaParool -FullName $Täisnimi -Description $Kontokirjeldus