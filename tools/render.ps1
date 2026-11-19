# Renders src/front.html to a 1024x1024 PNG with headless Chrome.
# Usage (from the repository root):  powershell -File tools/render.ps1 [-Out entry.png]
param([string]$Out = "entry.png")

$root = Split-Path -Parent $PSScriptRoot
$html = Join-Path $root "src\front.html"
$dest = Join-Path $root $Out
$chrome = "C:\Program Files\Google\Chrome\Application\chrome.exe"
if (-not (Test-Path $chrome)) { $chrome = "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" }

$profile = Join-Path $env:TEMP "wf1118-chrome"
$uri = ([System.Uri]$html).AbsoluteUri
$args = @(
  "--headless=new", "--disable-gpu", "--hide-scrollbars", "--force-device-scale-factor=1",
  "--window-size=1024,1024", "--user-data-dir=$profile", "--virtual-time-budget=3000",
  "--screenshot=$dest", $uri
)
& $chrome @args 2>$null | Out-Null
Start-Sleep -Milliseconds 300
$len = (Get-Item $dest).Length
Write-Output "wrote $dest ($len bytes)"
