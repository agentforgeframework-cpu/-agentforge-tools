# Preflight Check Stack

Purpose:
Check whether the local Windows/PowerShell environment appears ready to run file-reference-check.

Run from repository root.

```powershell
Write-Host "=== AgentForge PowerShell Preflight Check ==="
Write-Host ""

Write-Host "Current folder:"
Get-Location
Write-Host ""

Write-Host "Windows version:"
Get-CimInstance Win32_OperatingSystem | Select-Object Caption, Version, BuildNumber
Write-Host ""

Write-Host "PowerShell version:"
$PSVersionTable.PSVersion
Write-Host ""

Write-Host "Execution policy:"
Get-ExecutionPolicy -List
Write-Host ""

Write-Host "Can create ZIP?"
if (Get-Command Compress-Archive -ErrorAction SilentlyContinue) {
    Write-Host "PASS: Compress-Archive is available"
} else {
    Write-Host "FAIL: Compress-Archive is not available"
}
Write-Host ""

Write-Host "Git available?"
if (Get-Command git -ErrorAction SilentlyContinue) {
    Write-Host "PASS: git found"
    git --version
} else {
    Write-Host "WARNING: git is not available in this PowerShell session."
}
Write-Host ""

Write-Host "file-reference-check script present?"
if (Test-Path ".\file-reference-check\scripts\file-reference-check.ps1") {
    Write-Host "PASS: file-reference-check.ps1 found"
} else {
    Write-Host "FAIL: file-reference-check.ps1 not found"
}
Write-Host ""

Write-Host "Output folder writable?"
$testOutputDir = ".\file-reference-check\outputs"
try {
    New-Item -ItemType Directory -Force -Path $testOutputDir | Out-Null
    $testFile = Join-Path $testOutputDir "preflight-write-test.tmp"
    "test" | Set-Content -Path $testFile
    Remove-Item $testFile -Force
    Write-Host "PASS: Output folder is writable"
} catch {
    Write-Host "FAIL: Output folder is not writable"
    Write-Host $_.Exception.Message
}

Write-Host ""
Write-Host "=== Preflight Check Complete ==="
Write-Host "Copy this screen output into ChatGPT if you want help interpreting it."
```

Notes:
- This stack is screen-first.
- It is intended to produce visible operational evidence.
- It does not modify the repository except for creating and removing a temporary write-test file.
