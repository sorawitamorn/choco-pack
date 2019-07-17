
if(-not($env:Path -Split ';' | Where {$_ -eq  '$PSScriptRoot' }))
{
    [System.Environment]::SetEnvironmentVariable("Path", $Env:Path + ";$PSScriptRoot", "Machine")
    Write-Host "set '$PSScriptRoot' to Path Variable."
}

Write-Host "Intall chocolatey"
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))