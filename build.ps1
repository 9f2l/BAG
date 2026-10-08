$ErrorActionPreference = 'Stop'
Set-Location $PSScriptRoot
Add-Type -AssemblyName System.IO.Compression, System.IO.Compression.FileSystem
New-Item -ItemType Directory -Force dist | Out-Null
$zipPath = Join-Path $PSScriptRoot 'dist\freelancer-starter-kit.zip'
if (Test-Path -LiteralPath $zipPath) { [IO.File]::Delete($zipPath) }
$zip = [IO.Compression.ZipFile]::Open($zipPath, 'Create')
$base = (Resolve-Path product).Path
Get-ChildItem product -Recurse -File | ForEach-Object {
  $rel = $_.FullName.Substring($base.Length + 1).Replace('\', '/')
  [void][IO.Compression.ZipFileExtensions]::CreateEntryFromFile($zip, $_.FullName, $rel)
}
$zip.Dispose()
Write-Host "Built $zipPath"