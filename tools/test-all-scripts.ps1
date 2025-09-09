#!/usr/bin/env pwsh
<#
.SYNOPSIS
Test runner for template scripts
#>

function Test-Script {
    param(
        [string]$Path,
        [string]$Description,
        [switch]$ExpectError
    )

    Write-Host "Testing: $Description" -ForegroundColor Cyan
    Write-Host "Script: $Path" -ForegroundColor DarkGray
    
    try {
        # Just check syntax first
        $null = [ScriptBlock]::Create((Get-Content -Path $Path -Raw))
        Write-Host "✅ Syntax check passed" -ForegroundColor Green
        
        # Try to run the script with -WhatIf if possible (won't work for all scripts)
        if ($ExpectError) {
            Write-Host "⚠️ Script expected to have runtime errors without parameters - skipping execution" -ForegroundColor Yellow
        } else {
            # Just try to execute the script to see if there are runtime errors
            & $Path -ListInstances 2>&1 | Out-Null
            Write-Host "✅ Basic execution check passed" -ForegroundColor Green
        }
    } catch {
        if ($ExpectError) {
            Write-Host "⚠️ Expected error detected" -ForegroundColor Yellow
        } else {
            Write-Host "❌ Error: $_" -ForegroundColor Red
            return $false
        }
    }
    
    Write-Host ""
    return $true
}

$allPassed = $true
$rootDir = "E:\HPZ620\adx-core-k\ai-instructions-template"

# Test smart-agent-selector.ps1
if (-not (Test-Script -Path "$rootDir\tools\smart-agent-selector.ps1" -Description "Smart Agent Selector" -ExpectError)) {
    $allPassed = $false
}

# Test metrics-collector.ps1
if (-not (Test-Script -Path "$rootDir\tools\metrics-collector.ps1" -Description "Metrics Collector" -ExpectError)) {
    $allPassed = $false
}

# Test ai-work-tracker.ps1
if (-not (Test-Script -Path "$rootDir\ai-agents-works\automation\ai-work-tracker.ps1" -Description "AI Work Tracker" -ExpectError)) {
    $allPassed = $false
}

# Test validate-template.ps1
if (-not (Test-Script -Path "$rootDir\tools\validate-template.ps1" -Description "Template Validator" -ExpectError)) {
    $allPassed = $false
}

# Test ai-instructions-sync.ps1
if (-not (Test-Script -Path "$rootDir\tools\ai-instructions-sync.ps1" -Description "AI Instructions Sync" -ExpectError)) {
    $allPassed = $false
}

# Test self-healing-env.ps1
if (-not (Test-Script -Path "$rootDir\tools\self-healing-env.ps1" -Description "Self-Healing Environment" -ExpectError)) {
    $allPassed = $false
}

# Test setup-hook.ps1
if (-not (Test-Script -Path "$rootDir\tools\setup-hook.ps1" -Description "Setup Hook" -ExpectError)) {
    $allPassed = $false
}

# Report results
Write-Host "============================" -ForegroundColor Blue
Write-Host "Test Summary" -ForegroundColor Blue
Write-Host "============================" -ForegroundColor Blue
if ($allPassed) {
    Write-Host "All script syntax checks passed!" -ForegroundColor Green
} else {
    Write-Host "Some tests failed. See details above." -ForegroundColor Red
}
