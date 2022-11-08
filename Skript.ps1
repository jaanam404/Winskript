
$KasutajaParool = ConvertTo-SecureString "Parool1!" -AsPlainText -Force
New-LocalUser "Kasutaja1" -Password $KasutajaParool -FullName "Esmane Tavakasutaja" -Description "Local Cccound - Kasutaja1"