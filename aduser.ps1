﻿$file = "C:\Users\Administrator\Documents\adusers.csv"
$users = Import-Csv $file -Encoding Default -Delimiter ";"
foreach ($user in $users) {
$username = $user.FirstName + "." + $user.Lastname
$username = $username.Tolower()
$username = Translit($username)
$upname = $username + "@sv-kool.local"
$displayname = $user.FirstName + " " + $user.LastName
echo $displayname
New-ADUser -Name $username `
-DisplayName $displayname `-GivenName $user.FirstName `-Surname $user.LastName `-Department $user.Department `-Title $user.Role `-UserPrincipalName $upname `-AccountPassword (ConvertTo-SecureString $user.Password -AsPlainText -Force) -Enabled $true
}
function Translit 
{
param(
[string] $inputString
)}
$Translit = @{
[char]'ä' = "a"
[char]'ö' = "o"
[char]'ü' = "u"
[char]'õ' = "o"
}
$outputString=""
foreach ($character in $inputCharacter = $inputString.ToCharArray())
{
if ($Translit[$character] -cne $null ){
$outputString += $Translit[$character]
} else {
$outputString += $character
}
}
Write-Output $outputString