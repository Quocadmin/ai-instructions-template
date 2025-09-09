#!/usr/bin/env pwsh
<#
.SYNOPSIS
Simple test script to verify template functionality
#>

# Display banner
Write-Host "=============================="
Write-Host "AI Instructions Template Tester"
Write-Host "=============================="
Write-Host ""

# Check core directories
$requiredDirs = @(
    "ai-agents",
    "ai-agents-works",
    "tools"
)

foreach ($dir in $requiredDirs) {
    $path = Join-Path (Get-Location) $dir
    if (Test-Path $path -PathType Container) {
        Write-Host "[✓] Directory exists: $dir"
    } else {
        Write-Host "[✗] Missing directory: $dir"
    }
}

# Check core files
$requiredFiles = @(
    "AGENTS.md",
    "CLAUDE.md",
    "GEMINI.md",
    "README.md"
)

foreach ($file in $requiredFiles) {
    $path = Join-Path (Get-Location) $file
    if (Test-Path $path -PathType Leaf) {
        Write-Host "[✓] File exists: $file"
    } else {
        Write-Host "[✗] Missing file: $file"
    }
}

# Check script files
$scriptFiles = @(
    "tools\validate-template.ps1",
    "tools\smart-agent-selector.ps1",
    "ai-agents-works\automation\ai-work-tracker.ps1"
)

foreach ($script in $scriptFiles) {
    $path = Join-Path (Get-Location) $script
    if (Test-Path $path -PathType Leaf) {
        Write-Host "[✓] Script exists: $script"
    } else {
        Write-Host "[✗] Missing script: $script"
    }
}

Write-Host ""
Write-Host "Template test complete."
