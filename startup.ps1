
$homeKeyInput = Read-Host("Please choose your home key: Any Key=ALT, 2=Windows Key")
$homeKey = if ($homeKeyInput -ne 2) { "!" } else { "#" }
$cwd = Split-Path $MyInvocation.MyCommand.Path -Parent

$regex = '\(\(.{1}\)\)';
$currentHomeKey = Select-String  -Path $cwd\script.ahk -Pattern $regex -AllMatches | ForEach-Object {$_.Matches} | ForEach-Object {$_.Value}
$currentHomeKey = $currentHomeKey.Replace("(", "")
$currentHomeKey = $currentHomeKey.Replace(")", "")

if ($currentHomeKey -ne $homeKey) {
    (Get-Content $cwd\script.ahk).Replace($currentHomeKey, $homeKey) | Set-Content $cwd\script.ahk
}