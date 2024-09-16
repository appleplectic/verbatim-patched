$url1 = "https://github.com/appleplectic/verbatim-patched/raw/main/Debate.dotm"
$url2 = "https://github.com/appleplectic/verbatim-patched/raw/main/DebateStartup.dotm"

$folder1 = Join-Path $env:APPDATA "Microsoft\Templates"
$folder2 = Join-Path $env:APPDATA "Microsoft\Word\STARTUP"

if (-not (Test-Path -Path $folder1)) {
    New-Item -ItemType Directory -Path $folder1
}

if (-not (Test-Path -Path $folder2)) {
    New-Item -ItemType Directory -Path $folder2
}

$destFile1 = Join-Path $folder1 "Debate.dotm"
$destFile2 = Join-Path $folder2 "DebateStartup.dotm"

Invoke-WebRequest -Uri $url1 -OutFile $destFile1
Invoke-WebRequest -Uri $url2 -OutFile $destFile2

Write-Host "Files have been downloaded and saved in respective folders."
