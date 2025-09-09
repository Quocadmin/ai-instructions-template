#!/usr/bin/env pwsh
<#
.SYNOPSIS
AI Instructions Template Validation Script - Comprehensive Template Integrity Checker

.DESCRIPTION
This script validates the AI instructions template for:
- File structure integrity
- Script syntax validation
- JSON/YAML configuration validity
- Cross-reference consistency
- Placeholder completeness
- Hook system validation
- Agent file completeness

Features:
- Comprehensive validation of all template components
- Detailed error reporting with suggestions
- Cross-platform compatibility
- Automatic fix suggestions for common issues
- Success metrics and health scoring

.PARAMETER ValidationMode
The validation mode to run:
- full: Complete validation of all components
- structure: File structure validation only
- scripts: PowerShell script syntax validation
- configs: JSON/YAML configuration validation
- references: Cross-reference validation
- agents: AI agent file validation

.PARAMETER AutoFix
Automatically fix issues that can be resolved

.PARAMETER Detailed
Show detailed validation results

.PARAMETER ExportReport
Export validation report to file

.EXAMPLE
.\validate-template.ps1 -ValidationMode full -Detailed

.EXAMPLE
.\validate-template.ps1 -ValidationMode scripts -AutoFix

.EXAMPLE
.\validate-template.ps1 -ValidationMode full -ExportReport

.NOTES
Author: AI Instructions Template
Version: 1.0.0
Created: 2025-01-13
#>

[CmdletBinding()]
param(
    [Parameter(Mandatory=$false)]
    [ValidateSet("full", "structure", "scripts", "configs", "references", "agents")]
    [string]$ValidationMode = "full",

    [Parameter(Mandatory=$false)]
    [switch]$AutoFix = $false,

    [Parameter(Mandatory=$false)]
    [switch]$Detailed = $false,

    [Parameter(Mandatory=$false)]
    [switch]$ExportReport = $false
)

# Initialize validation context
$ScriptRoot = $PSScriptRoot
$TemplateRoot = Split-Path $ScriptRoot -Parent
$ValidationResults = @{
    OverallScore = 0
    TotalChecks = 0
    PassedChecks = 0
    FailedChecks = 0
    WarningChecks = 0
    Categories = @{}
    Issues = @()
    Suggestions = @()
}

# Validation categories and expected files
$ExpectedStructure = @{
    "Core Files" = @(
        "README.md",
        "INIT-AI-INSTRUCTIONS.md",
        "TEMPLATE-SUMMARY.md",
        "AGENTS.md",
        "CLAUDE.md",
        "GEMINI.md"
    )
    "GitHub Integration" = @(
        ".github/copilot-instructions.md"
    )
    "Kiro Framework" = @(
        ".kiro/hooks/ai-instructions-auto-sync.kiro.hook",
        ".kiro/hooks/environment-monitor.kiro.hook",
        ".kiro/hooks/faangai-github-sync.kiro.hook",
        ".kiro/hooks/post-commit-optimization.kiro.hook",
        ".kiro/hooks/pre-commit-ai-quality.kiro.hook",
        ".kiro/hooks/test-debug-runner.kiro.hook",
        ".kiro/settings",
        ".kiro/specs",
        ".kiro/steering"
    )
    "IDE Configuration" = @(
        ".vscode/README.md",
        ".vscode/tasks.json",
        ".vscode/launch.json",
        ".vscode/extensions.json",
        ".vscode/snippets",
        ".zed/README.md"
    )
    "AI Agents" = @(
        "ai-agents/architect-agent.md",
        "ai-agents/backend-agent.md",
        "ai-agents/coordinator-agent.md",
        "ai-agents/database-agent.md",
        "ai-agents/devops-agent.md",
        "ai-agents/frontend-agent.md",
        "ai-agents/hooks-agent.md",
        "ai-agents/pm-agent.md",
        "ai-agents/qa-agent.md",
        "ai-agents/security-agent.md",
        "ai-agents/spec-agent.md",
        "ai-agents/steering-agent.md"
    )
    "Work Tracking System" = @(
        "ai-agents-works/sessions",
        "ai-agents-works/automation/ai-work-tracker.ps1",
        "ai-agents-works/automation/logs",
        "ai-agents-works/automation/metrics",
        "ai-agents-works/automation/sessions"
    )
    "Development Tools" = @(
        "tools/ai-instructions-sync.ps1",
        "tools/smart-agent-selector.ps1",
        "tools/self-healing-env.ps1",
        "tools/metrics-collector.ps1",
        "tools/setup-hook.ps1",
        "tools/validate-template.ps1"
    )
}

# PowerShell scripts that need syntax validation
$PowerShellScripts = @(
    "tools/ai-instructions-sync.ps1",
    "tools/smart-agent-selector.ps1",
    "tools/self-healing-env.ps1",
    "tools/metrics-collector.ps1",
    "tools/setup-hook.ps1",
    "ai-agents-works/automation/ai-work-tracker.ps1",
    "ai-agents-works/automation/intelligent-router.ps1",
    "ai-agents-works/automation/self-healing-monitor.ps1"
)

# JSON/YAML configuration files
$ConfigFiles = @{
    ".vscode/tasks.json" = "json"
    ".vscode/launch.json" = "json"
    ".vscode/extensions.json" = "json"
    ".kiro/hooks/ai-instructions-auto-sync.kiro.hook" = "json"
    ".kiro/hooks/environment-monitor.kiro.hook" = "json"
    ".kiro/hooks/faangai-github-sync.kiro.hook" = "json"
    ".kiro/hooks/post-commit-optimization.kiro.hook" = "json"
    ".kiro/hooks/pre-commit-ai-quality.kiro.hook" = "json"
    ".kiro/hooks/test-debug-runner.kiro.hook" = "json"
    "ai-agents-works/metrics/agent-performance.json" = "json"
}

# Logging function
function Write-ValidationLog {
    param(
        [string]$Message,
        [string]$Level = "Info",
        [string]$Category = "General"
    )

    $timestamp = Get-Date -Format "HH:mm:ss"
    $levelColors = @{
        "Info" = "White"
        "Success" = "Green"
        "Warning" = "Yellow"
        "Error" = "Red"
        "Debug" = "DarkGray"
    }

    $color = $levelColors[$Level]
    if ($color) {
        Write-Host "[$timestamp] [$Category] $Message" -ForegroundColor $color
    } else {
        Write-Host "[$timestamp] [$Category] $Message"
    }
}

# Record validation result
function Add-ValidationResult {
    param(
        [string]$Category,
        [string]$Check,
        [bool]$Passed,
        [string]$Message = "",
        [string]$Suggestion = "",
        [string]$Level = "Error"
    )

    $ValidationResults.TotalChecks++

    if (-not $ValidationResults.Categories.ContainsKey($Category)) {
        $ValidationResults.Categories[$Category] = @{
            Total = 0
            Passed = 0
            Failed = 0
            Warnings = 0
        }
    }

    $ValidationResults.Categories[$Category].Total++

    if ($Passed) {
        $ValidationResults.PassedChecks++
        $ValidationResults.Categories[$Category].Passed++
        if ($Detailed) {
            Write-ValidationLog "✅ $Check" "Success" $Category
        }
    } else {
        if ($Level -eq "Warning") {
            $ValidationResults.WarningChecks++
            $ValidationResults.Categories[$Category].Warnings++
            Write-ValidationLog "⚠️ $Check - $Message" "Warning" $Category
        } else {
            $ValidationResults.FailedChecks++
            $ValidationResults.Categories[$Category].Failed++
            Write-ValidationLog "❌ $Check - $Message" "Error" $Category
        }

        $ValidationResults.Issues += @{
            Category = $Category
            Check = $Check
            Message = $Message
            Suggestion = $Suggestion
            Level = $Level
        }

        if ($Suggestion) {
            $ValidationResults.Suggestions += $Suggestion
        }
    }
}

# File structure validation
function Test-FileStructure {
    Write-ValidationLog "Validating file structure..." "Info" "Structure"

    foreach ($categoryName in $ExpectedStructure.Keys) {
        $category = $ExpectedStructure[$categoryName]

        foreach ($expectedPath in $category) {
            $fullPath = Join-Path $TemplateRoot $expectedPath
            $exists = Test-Path $fullPath

            Add-ValidationResult -Category "Structure" -Check "File/Directory: $expectedPath" -Passed $exists -Message $(if (-not $exists) { "Missing required file or directory" }) -Suggestion $(if (-not $exists) { "Create missing file: $expectedPath" })
        }
    }
}

# PowerShell script syntax validation
function Test-PowerShellScripts {
    Write-ValidationLog "Validating PowerShell script syntax..." "Info" "Scripts"

    foreach ($scriptPath in $PowerShellScripts) {
        $fullPath = Join-Path $TemplateRoot $scriptPath

        if (Test-Path $fullPath) {
            try {
                $content = Get-Content $fullPath -Raw
                $tokens = $null
                $errors = $null
                $null = [System.Management.Automation.PSParser]::Tokenize($content, [ref]$tokens)

                if ($errors -and $errors.Count -gt 0) {
                    $errorMsg = "Syntax errors: $($errors -join '; ')"
                    Add-ValidationResult -Category "Scripts" -Check "PowerShell Syntax: $scriptPath" -Passed $false -Message $errorMsg -Suggestion "Fix PowerShell syntax errors in $scriptPath"
                } else {
                    Add-ValidationResult -Category "Scripts" -Check "PowerShell Syntax: $scriptPath" -Passed $true
                }
            } catch {
                Add-ValidationResult -Category "Scripts" -Check "PowerShell Syntax: $scriptPath" -Passed $false -Message "Parse error: $($_.Exception.Message)" -Suggestion "Review and fix PowerShell syntax in $scriptPath"
            }
        } else {
            Add-ValidationResult -Category "Scripts" -Check "PowerShell Syntax: $scriptPath" -Passed $false -Message "Script file not found" -Suggestion "Create missing PowerShell script: $scriptPath" -Level "Warning"
        }
    }
}

# JSON/YAML configuration validation
function Test-ConfigFiles {
    Write-ValidationLog "Validating configuration files..." "Info" "Configs"

    foreach ($configPath in $ConfigFiles.Keys) {
        $configType = $ConfigFiles[$configPath]
        $fullPath = Join-Path $TemplateRoot $configPath

        if (Test-Path $fullPath) {
            try {
                $content = Get-Content $fullPath -Raw

                switch ($configType) {
                    "json" {
                        $null = ConvertFrom-Json $content -ErrorAction Stop
                        Add-ValidationResult -Category "Configs" -Check "JSON Syntax: $configPath" -Passed $true
                    }
                    "yaml" {
                        # Basic YAML validation (could be enhanced with proper YAML parser)
                        if ($content -match "^\s*[\-\[\{]" -or $content -match ":\s*") {
                            Add-ValidationResult -Category "Configs" -Check "YAML Syntax: $configPath" -Passed $true
                        } else {
                            Add-ValidationResult -Category "Configs" -Check "YAML Syntax: $configPath" -Passed $false -Message "Invalid YAML format" -Suggestion "Validate YAML syntax in $configPath"
                        }
                    }
                }
            } catch {
                Add-ValidationResult -Category "Configs" -Check "$($configType.ToUpper()) Syntax: $configPath" -Passed $false -Message "Parse error: $($_.Exception.Message)" -Suggestion "Fix $configType syntax in $configPath"
            }
        } else {
            Add-ValidationResult -Category "Configs" -Check "$($configType.ToUpper()) Syntax: $configPath" -Passed $false -Message "Configuration file not found" -Suggestion "Create missing configuration file: $configPath" -Level "Warning"
        }
    }
}

# Cross-reference validation
function Test-CrossReferences {
    Write-ValidationLog "Validating cross-references..." "Info" "References"

    # Check if README mentions all actual files
    $readmePath = Join-Path $TemplateRoot "README.md"
    if (Test-Path $readmePath) {
        $readmeContent = Get-Content $readmePath -Raw

        # Check for references to PowerShell scripts
        foreach ($scriptPath in $PowerShellScripts) {
            $scriptName = Split-Path $scriptPath -Leaf
            if ($readmeContent -match [regex]::Escape($scriptName)) {
                Add-ValidationResult -Category "References" -Check "README references: $scriptName" -Passed $true
            } else {
                Add-ValidationResult -Category "References" -Check "README references: $scriptName" -Passed $false -Message "Script not mentioned in README" -Suggestion "Add reference to $scriptName in README.md" -Level "Warning"
            }
        }
    }

    # Check agent file consistency
    $agentFiles = Get-ChildItem -Path (Join-Path $TemplateRoot "ai-agents") -Filter "*.md" -ErrorAction SilentlyContinue
    foreach ($agentFile in $agentFiles) {
        $agentContent = Get-Content $agentFile.FullName -Raw

        # Check for required sections
        $requiredSections = @("Mission", "Specializations", "Operating Rules", "Development Workflow")
        foreach ($section in $requiredSections) {
            if ($agentContent -match $section) {
                Add-ValidationResult -Category "References" -Check "Agent structure: $($agentFile.Name) - $section" -Passed $true
            } else {
                Add-ValidationResult -Category "References" -Check "Agent structure: $($agentFile.Name) - $section" -Passed $false -Message "Missing required section" -Suggestion "Add $section section to $($agentFile.Name)" -Level "Warning"
            }
        }
    }
}

# AI agent file validation
function Test-AIAgents {
    Write-ValidationLog "Validating AI agent files..." "Info" "Agents"

    $agentDirectory = Join-Path $TemplateRoot "ai-agents"
    if (Test-Path $agentDirectory) {
        $agentFiles = Get-ChildItem -Path $agentDirectory -Filter "*.md"

        foreach ($agentFile in $agentFiles) {
            $agentContent = Get-Content $agentFile.FullName -Raw

            # Check for placeholder content
            $hasPlaceholders = $agentContent -match "\[PROJECT_NAME\]|\{PROJECT_NAME\}|YOUR_PROJECT|REPLACE_WITH"
            if ($hasPlaceholders) {
                Add-ValidationResult -Category "Agents" -Check "Placeholders: $($agentFile.Name)" -Passed $false -Message "Contains template placeholders" -Suggestion "Replace placeholders in $($agentFile.Name)" -Level "Warning"
            } else {
                Add-ValidationResult -Category "Agents" -Check "Placeholders: $($agentFile.Name)" -Passed $true
            }

            # Check minimum content length
            if ($agentContent.Length -lt 500) {
                Add-ValidationResult -Category "Agents" -Check "Content completeness: $($agentFile.Name)" -Passed $false -Message "Agent file seems incomplete (too short)" -Suggestion "Expand content in $($agentFile.Name)" -Level "Warning"
            } else {
                Add-ValidationResult -Category "Agents" -Check "Content completeness: $($agentFile.Name)" -Passed $true
            }
        }
    }
}

# Auto-fix function
function Invoke-AutoFix {
    Write-ValidationLog "Attempting automatic fixes..." "Info" "AutoFix"

    $fixCount = 0

    # Create missing directories
    foreach ($categoryName in $ExpectedStructure.Keys) {
        $category = $ExpectedStructure[$categoryName]

        foreach ($expectedPath in $category) {
            $fullPath = Join-Path $TemplateRoot $expectedPath

            if (-not (Test-Path $fullPath)) {
                if ($expectedPath -notlike "*.md" -and $expectedPath -notlike "*.ps1" -and $expectedPath -notlike "*.json" -and $expectedPath -notlike "*.hook") {
                    # It's likely a directory
                    try {
                        New-Item -ItemType Directory -Path $fullPath -Force | Out-Null
                        Write-ValidationLog "Created directory: $expectedPath" "Success" "AutoFix"
                        $fixCount++
                    } catch {
                        Write-ValidationLog "Failed to create directory: $expectedPath - $($_.Exception.Message)" "Error" "AutoFix"
                    }
                }
            }
        }
    }

    if ($fixCount -gt 0) {
        Write-ValidationLog "Applied $fixCount automatic fixes" "Success" "AutoFix"
    } else {
        Write-ValidationLog "No automatic fixes were possible" "Info" "AutoFix"
    }
}

# Export validation report
function Export-ValidationReport {
    $reportPath = Join-Path $TemplateRoot "validation-report.json"
    $report = @{
        Timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
        ValidationMode = $ValidationMode
        OverallScore = [math]::Round(($ValidationResults.PassedChecks / [math]::Max($ValidationResults.TotalChecks, 1)) * 100, 2)
        Summary = @{
            TotalChecks = $ValidationResults.TotalChecks
            PassedChecks = $ValidationResults.PassedChecks
            FailedChecks = $ValidationResults.FailedChecks
            WarningChecks = $ValidationResults.WarningChecks
        }
        Categories = $ValidationResults.Categories
        Issues = $ValidationResults.Issues
        Suggestions = $ValidationResults.Suggestions | Sort-Object | Get-Unique
    }

    $report | ConvertTo-Json -Depth 10 | Out-File -FilePath $reportPath -Encoding UTF8
    Write-ValidationLog "Validation report exported to: validation-report.json" "Success" "Export"
}

# Main validation execution
function Invoke-Validation {
    Write-ValidationLog "Starting AI Instructions Template validation..." "Info" "Main"
    Write-ValidationLog "Template Root: $TemplateRoot" "Info" "Main"
    Write-ValidationLog "Validation Mode: $ValidationMode" "Info" "Main"

    # Apply auto-fixes first if requested
    if ($AutoFix) {
        Invoke-AutoFix
    }

    # Run validation based on mode
    switch ($ValidationMode) {
        "full" {
            Test-FileStructure
            Test-PowerShellScripts
            Test-ConfigFiles
            Test-CrossReferences
            Test-AIAgents
        }
        "structure" {
            Test-FileStructure
        }
        "scripts" {
            Test-PowerShellScripts
        }
        "configs" {
            Test-ConfigFiles
        }
        "references" {
            Test-CrossReferences
        }
        "agents" {
            Test-AIAgents
        }
    }

    # Calculate overall score
    $ValidationResults.OverallScore = if ($ValidationResults.TotalChecks -gt 0) {
        [math]::Round(($ValidationResults.PassedChecks / $ValidationResults.TotalChecks) * 100, 2)
    } else {
        0
    }

    # Display results
    Write-Host "`n" -NoNewline
    Write-ValidationLog "=== VALIDATION RESULTS ===" "Info" "Results"
    Write-ValidationLog "Overall Score: $($ValidationResults.OverallScore)%" $(if ($ValidationResults.OverallScore -ge 90) { "Success" } elseif ($ValidationResults.OverallScore -ge 70) { "Warning" } else { "Error" }) "Results"
    Write-ValidationLog "Total Checks: $($ValidationResults.TotalChecks)" "Info" "Results"
    Write-ValidationLog "Passed: $($ValidationResults.PassedChecks)" "Success" "Results"
    Write-ValidationLog "Failed: $($ValidationResults.FailedChecks)" "Error" "Results"
    Write-ValidationLog "Warnings: $($ValidationResults.WarningChecks)" "Warning" "Results"

    if ($ValidationResults.Categories.Count -gt 0) {
        Write-Host "`nCategory Breakdown:" -ForegroundColor Cyan
        foreach ($categoryName in $ValidationResults.Categories.Keys) {
            $category = $ValidationResults.Categories[$categoryName]
            $categoryScore = if ($category.Total -gt 0) { [math]::Round(($category.Passed / $category.Total) * 100, 1) } else { 0 }
            Write-Host "  $categoryName`: $categoryScore% ($($category.Passed)/$($category.Total))" -ForegroundColor $(if ($categoryScore -ge 90) { "Green" } elseif ($categoryScore -ge 70) { "Yellow" } else { "Red" })
        }
    }

    if ($ValidationResults.FailedChecks -gt 0 -or $ValidationResults.WarningChecks -gt 0) {
        Write-Host "`nRecommendations:" -ForegroundColor Cyan
        $uniqueSuggestions = $ValidationResults.Suggestions | Sort-Object | Get-Unique
        foreach ($suggestion in $uniqueSuggestions) {
            Write-Host "  • $suggestion" -ForegroundColor Yellow
        }
    }

    # Export report if requested
    if ($ExportReport) {
        Export-ValidationReport
    }

    # Set exit code based on results
    if ($ValidationResults.FailedChecks -gt 0) {
        exit 1
    } elseif ($ValidationResults.WarningChecks -gt 0) {
        exit 2
    } else {
        exit 0
    }
}

# Execute validation
Invoke-Validation
