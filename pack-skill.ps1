# pack-skill.ps1
# Compiles the Skillings outreach skill into the skillings-outreach.skill package.

$ErrorActionPreference = "Stop"

$tempDir = Join-Path $PSScriptRoot "temp_pack"
$outputSkill = Join-Path $PSScriptRoot "skillings-outreach.skill"
$outputZipTemp = Join-Path $PSScriptRoot "skillings-outreach.zip"

# Clean up any existing temp files
if (Test-Path $tempDir) {
    Remove-Item -Recurse -Force $tempDir
}
if (Test-Path $outputSkill) {
    Remove-Item -Force $outputSkill
}
if (Test-Path $outputZipTemp) {
    Remove-Item -Force $outputZipTemp
}

# Create temp directories
New-Item -ItemType Directory -Path $tempDir | Out-Null
New-Item -ItemType Directory -Path (Join-Path $tempDir "references") | Out-Null

# Copy files
Copy-Item (Join-Path $PSScriptRoot "README.md") $tempDir
Copy-Item (Join-Path $PSScriptRoot "skills\skillings-outreach\SKILL.md") $tempDir
Copy-Item (Join-Path $PSScriptRoot "skills\skillings-outreach\references\*") (Join-Path $tempDir "references") -Recurse

# Compress to zip
Compress-Archive -Path "$tempDir\*" -DestinationPath $outputZipTemp

# Rename zip to .skill
Rename-Item -Path $outputZipTemp -NewName "skillings-outreach.skill"

# Clean up temp directory
Remove-Item -Recurse -Force $tempDir

Write-Host "Success: Packaged skillings-outreach.skill successfully!" -ForegroundColor Green
