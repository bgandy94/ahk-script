$cwd = Split-Path $MyInvocation.MyCommand.Path -Parent
Set-Location $cwd
$commonStartPath = [Environment]::GetFolderPath('CommonStartup')
Copy-Item "$($cwd)\test.exe" -Destination "$($commonStartPath)\test.exe" -Confirm
Write-Host  $cwd
Write-Host  $cwd