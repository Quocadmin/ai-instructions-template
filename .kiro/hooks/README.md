# Simplified Kiro Hooks Template

## 🎯 Overview

This directory contains **simplified Kiro hook templates** using a clean, standardized JSON syntax. These hooks provide essential automation for AI instruction synchronization, quality checks, and development workflow optimization.

## 🚀 Quick Start

### 1. **Setup Hooks (1 minute)**
```powershell
# Copy hooks to your project
Copy-Item "ai-instructions-template\.kiro\hooks\*.hook" ".kiro\hooks\" -Force

# Replace project-specific values (if needed)
# Most hooks work out-of-the-box with minimal configuration
```

### 2. **Replace Placeholders (30 seconds)**
```powershell
# Replace placeholders in hook files for your project
# Most common placeholders:
# {PROJECT_NAME} → "MyProject" or "MyApp Core"
# {BACKEND_PATH} → "src" or "backend" or "server"
# {BACKEND_EXT} → "rs" (Rust) or "go" (Go) or "py" (Python)
# {BACKEND_LANG} → "Rust" or "Go" or "Python"
# {FRONTEND_EXT} → "ts" or "js" or "tsx" or "jsx"
# {WORKFLOW_ENGINE} → "Temporal" or "Conductor" or "Airflow"
# {DB_USER} → "app_user" or "postgres"
# {DB_NAME} → "app_db" or "myproject_db"

# Use find-replace in your editor or run setup script
.\tools\setup-hooks.ps1 -ProjectName "MyProject" -BackendPath "src" -BackendExt "rs"
```

### 3. **Test Hook System**
```powershell
# Make a small change to any AI instruction file
# Hook will automatically trigger and guide you through the process
```

## 📁 Available Hooks

### **AI Instructions Auto-Sync**
**File**: `ai-instructions-auto-sync.kiro.hook`
**Trigger**: When AI instruction files are modified
**Action**: Synchronizes AI instructions across all platforms (GitHub Copilot, Claude, VS Code, Zed)

```json
{
  "enabled": true,
  "name": "AI Instructions Auto-Sync",
  "when": {
    "type": "fileEdited",
    "patterns": ["AGENTS.md", "CLAUDE.md", ".github/copilot-instructions.md", "ai-agents/*.md"],
    "branches": ["main", "develop", "feature/*", "hotfix/*"]
  },
  "then": {
    "type": "askAgent",
    "tool": "tools/ai-instructions-sync.ps1",
    "arguments": ["-Action", "sync-all"]
  }
}
```

### **Environment Monitor**
**File**: `environment-monitor.kiro.hook`
**Trigger**: On startup or environment changes
**Action**: Validates development environment health and dependencies

### **Kiro GitHub Sync**
**File**: `faangai-github-sync.kiro.hook`
**Trigger**: When Kiro specifications are modified
**Action**: Syncs tasks and requirements with GitHub issues and project boards

### **Pre-Commit Quality Check**
**File**: `pre-commit-ai-quality.kiro.hook`
**Trigger**: Before commits
**Action**: Runs quality checks (formatting, linting, compilation, tests)

### **Post-Commit Optimization**
**File**: `post-commit-optimization.kiro.hook`
**Trigger**: After successful commits
**Action**: Updates dependencies, generates docs, optimizes caches

### **Test Debug Runner**
**File**: `test-debug-runner.kiro.hook`
**Trigger**: On demand or test failures
**Action**: Provides interactive testing and debugging assistance

## 🔧 Simple Hook Syntax

All hooks follow this standardized structure:

```json
{
  "enabled": true,
  "name": "Hook Name",
  "description": "What this hook does",
  "version": "1.0",
  "when": {
    "type": "trigger_type",
    "patterns": ["file_patterns"],
    "branches": ["branch_patterns"]
  },
  "then": {
    "type": "executeTool|askAgent",
    "tool": "path/to/tool",
    "arguments": ["arg1", "arg2"],
    "prompt": "AI agent instructions"
  }
}
```

### **Trigger Types**
- `fileEdited` - When specified files are modified
- `preCommit` - Before git commits
- `postCommit` - After successful commits
- `onStartup` - When development environment starts
- `onDemand` - Manual execution or on specific events

### **Action Types**
- `executeTool` - Run a script or command directly
- `askAgent` - Engage AI agent with instructions and optional tool execution

## 🔧 Placeholder Replacement

### **Required Placeholders**
Replace these placeholders in all template hook files:

| Placeholder | Description | Common Values |
|-------------|-------------|---------------|
| `{PROJECT_NAME}` | Your project name | "MyApp", "ProjectX Core", "MyService" |
| `{BACKEND_PATH}` | Backend code directory | "src", "backend", "server", "api" |
| `{BACKEND_EXT}` | Backend file extension | "rs" (Rust), "go" (Go), "py" (Python), "ts" (Node.js) |
| `{BACKEND_LANG}` | Backend language name | "Rust", "Go", "Python", "Node.js" |
| `{FRONTEND_EXT}` | Frontend file extension | "ts", "tsx", "js", "jsx", "vue" |
| `{WORKFLOW_ENGINE}` | Workflow engine used | "Temporal", "Conductor", "Airflow", "none" |
| `{DB_USER}` | Database username | "app_user", "postgres", "mysql_user" |
| `{DB_NAME}` | Database name | "app_db", "myproject_db", "production_db" |

### **Quick Replacement Examples**

**For Rust + React Project:**
```json
{PROJECT_NAME} → "MyApp Core"
{BACKEND_PATH} → "src"
{BACKEND_EXT} → "rs"
{BACKEND_LANG} → "Rust"
{FRONTEND_EXT} → "tsx"
{WORKFLOW_ENGINE} → "Temporal"
{DB_USER} → "app_user"
{DB_NAME} → "myapp_db"
```

**For Go + Vue Project:**
```json
{PROJECT_NAME} → "API Service"
{BACKEND_PATH} → "backend"
{BACKEND_EXT} → "go"
{BACKEND_LANG} → "Go"
{FRONTEND_EXT} → "vue"
{WORKFLOW_ENGINE} → "none"
{DB_USER} → "postgres"
{DB_NAME} → "api_db"
```

**For Python + Angular Project:**
```json
{PROJECT_NAME} → "Data Platform"
{BACKEND_PATH} → "api"
{BACKEND_EXT} → "py"
{BACKEND_LANG} → "Python"
{FRONTEND_EXT} → "ts"
{WORKFLOW_ENGINE} → "Airflow"
{DB_USER} → "data_user"
{DB_NAME} → "platform_db"
```

### **Automated Replacement Script**
```powershell
# Create a simple replacement script
$replacements = @{
    '{PROJECT_NAME}' = 'MyProject'
    '{BACKEND_PATH}' = 'src'
    '{BACKEND_EXT}' = 'rs'
    '{BACKEND_LANG}' = 'Rust'
    '{FRONTEND_EXT}' = 'tsx'
    '{WORKFLOW_ENGINE}' = 'Temporal'
    '{DB_USER}' = 'app_user'
    '{DB_NAME}' = 'myapp_db'
}

Get-ChildItem ".kiro\hooks\*.hook" | ForEach-Object {
    $content = Get-Content $_.FullName -Raw
    foreach ($placeholder in $replacements.Keys) {
        $content = $content -replace [regex]::Escape($placeholder), $replacements[$placeholder]
    }
    Set-Content $_.FullName -Value $content -NoNewline
    Write-Host "Updated: $($_.Name)"
}
```

## 🛠️ Configuration

### **File Patterns**
Common patterns used in hooks:

```json
"patterns": [
  "**/*.rs",           // All Rust files
  "**/*.ts",           // All TypeScript files
  "**/*.tsx",          // All React/TSX files
  "**/*.md",           // All Markdown files
  ".kiro/specs/**/*",  // Kiro specifications
  "ai-agents/*.md",    // AI agent files
  "package.json",      // Node.js package file
  "Cargo.toml"         // Rust package file
]
```

### **Branch Patterns**
Default branch patterns:

```json
"branches": [
  "main",              // Main branch
  "develop",           // Development branch
  "feature/*",         // Feature branches
  "hotfix/*",          // Hotfix branches
  "release/*"          // Release branches
]
```

### **Tool Paths**
Standard tool locations:

```json
"tool": "tools/script-name.ps1"           // PowerShell scripts
"tool": "tools/script-name.sh"            // Shell scripts
"tool": "ai-agents/agent-name.md"         // AI agent files
"tool": "scripts/automation-script.ps1"   // Automation scripts
```

## 📋 Hook Management

### **Enable/Disable Hooks**
```json
{
  "enabled": true,    // Hook is active
  "enabled": false    // Hook is disabled
}
```

### **Validate Hook Syntax**
```powershell
# Check JSON syntax
Get-Content ".kiro\hooks\*.hook" | ForEach-Object {
  try {
    $_ | ConvertFrom-Json | Out-Null
    Write-Host "✅ Valid: $_"
  } catch {
    Write-Error "❌ Invalid JSON: $_"
  }
}
```

### **Test Individual Hooks**
```powershell
# Test specific hook trigger
# Make relevant file changes to trigger the hook
# Or use manual execution for onDemand hooks
```

## 🔍 Troubleshooting

### **Hook Not Triggering**
1. Check `"enabled": true` in hook configuration
2. Verify file patterns match your actual files
3. Ensure current branch matches branch patterns
4. Validate JSON syntax with linter

### **Tool Not Found Errors**
1. Verify tool paths exist: `Test-Path "tools/script-name.ps1"`
2. Check file permissions for script execution
3. Ensure required dependencies are installed
4. Use absolute paths if relative paths fail

### **AI Agent Issues**
1. Verify AI agent files exist in `ai-agents/` directory
2. Check agent file format and instructions
3. Ensure proper prompt format in hook configuration
4. Test agent interaction manually first

### **Performance Issues**
1. Use specific file patterns instead of wildcards
2. Exclude unnecessary directories (node_modules, target, etc.)
3. Limit hook execution to essential branches only
4. Consider background execution for heavy operations

## 🚀 Advanced Customization

### **Custom File Patterns**
```json
"patterns": [
  "src/**/*.{rs,ts}",           // Multiple extensions
  "!(node_modules)/**/*.js",    // Exclude directories
  "{apps,packages}/**/*.tsx",   // Multiple directories
  "**/*.{json,toml,yaml}"       // Configuration files
]
```

### **Conditional Execution**
```json
"arguments": [
  "--if-modified",              // Only run if files modified
  "--skip-tests",               // Skip time-consuming tests
  "--parallel",                 // Run operations in parallel
  "--quiet"                     // Suppress verbose output
]
```

### **Environment-Specific Hooks**
```json
"tool": "tools/windows-script.ps1",     // Windows-specific
"tool": "tools/unix-script.sh",         // Unix/Linux-specific
"tool": "tools/cross-platform.py"       // Python cross-platform
```

## 🔄 Migration from Complex Hooks

If migrating from complex hook configurations:

1. **Backup existing hooks**:
   ```powershell
   Copy-Item ".kiro\hooks" ".kiro\hooks.backup" -Recurse
   ```

2. **Replace with simplified templates**:
   ```powershell
   Copy-Item "ai-instructions-template\.kiro\hooks\*.hook" ".kiro\hooks\" -Force
   ```

3. **Test functionality**:
   ```powershell
   # Trigger a hook to verify it works
   # Example: Edit AGENTS.md to test AI sync hook
   ```

4. **Replace placeholders**:
   ```powershell
   # Use automated script or manual find-replace
   # See "Placeholder Replacement" section above
   ```

5. **Customize if needed**:
   - Adjust file patterns for your project structure
   - Modify tool paths if your scripts are in different locations
   - Update branch patterns for your git workflow

## 📊 Hook Examples

### **Custom Hook Template**
```json
{
  "enabled": true,
  "name": "My Custom Hook",
  "description": "Custom automation for my project",
  "version": "1.0",
  "when": {
    "type": "fileEdited",
    "patterns": ["my-files/**/*.ext"],
    "branches": ["main", "develop"]
  },
  "then": {
    "type": "executeTool",
    "tool": "tools/my-custom-script.ps1",
    "arguments": ["--custom-arg", "value"],
    "prompt": "Optional AI instructions if using askAgent"
  }
}
```

### **Multi-Tool Hook**
```json
{
  "enabled": true,
  "name": "Multi-Step Process",
  "description": "Execute multiple tools in sequence",
  "version": "1.0",
  "when": {
    "type": "postCommit",
    "patterns": ["**/*.important"],
    "branches": ["main"]
  },
  "then": {
    "type": "askAgent",
    "tool": "tools/orchestrator.ps1",
    "arguments": ["--step1", "--step2", "--step3"],
    "prompt": "Execute multi-step process: 1) Validate files, 2) Update dependencies, 3) Generate reports. Use the orchestrator tool to coordinate all steps and report completion status."
  }
}
```

## 🌟 Benefits of Simplified Syntax

### **Clarity**
- ✅ Easy to read and understand
- ✅ Consistent structure across all hooks
- ✅ Self-documenting configuration
- ✅ Minimal complexity

### **Maintainability**
- ✅ Simple to modify and extend
- ✅ Easy to debug when issues arise
- ✅ Version control friendly
- ✅ No hidden configuration layers

### **Reliability**
- ✅ Fewer configuration options = fewer points of failure
- ✅ Standard patterns reduce errors
- ✅ Clear execution flow
- ✅ Predictable behavior

### **Flexibility**
- ✅ AI agents handle complex logic
- ✅ Tools can be simple or sophisticated
- ✅ Easy to combine multiple operations
- ✅ Supports both automation and human interaction

## 📚 Best Practices

### **Hook Design**
1. **Single Responsibility**: Each hook should have one clear purpose
2. **Idempotent Operations**: Hooks should be safe to run multiple times
3. **Fast Execution**: Keep hook execution time minimal
4. **Clear Feedback**: Provide clear success/failure feedback

### **File Patterns**
1. **Specific Patterns**: Use specific patterns over broad wildcards
2. **Exclude Unnecessary**: Always exclude build artifacts and dependencies
3. **Test Patterns**: Verify patterns match expected files
4. **Document Intent**: Comment on complex pattern choices

### **Tool Integration**
1. **Error Handling**: Tools should handle errors gracefully
2. **Return Codes**: Use proper exit codes for success/failure
3. **Logging**: Provide adequate logging for debugging
4. **Cross-Platform**: Consider multi-OS compatibility

### **AI Agent Usage**
1. **Clear Instructions**: Provide specific, actionable prompts
2. **Context Awareness**: Include relevant context in prompts
3. **Fallback Options**: Provide manual alternatives when AI fails
4. **Human Review**: Allow human oversight for critical operations

---

## ✅ Success Checklist

**Your simplified hooks are working correctly when:**

- [ ] All placeholders replaced with project-specific values
- [ ] Hooks trigger automatically on relevant file changes
- [ ] AI agents provide clear guidance and execute tools properly
- [ ] No JSON syntax errors in hook configurations
- [ ] Tool paths resolve correctly across different environments
- [ ] Branch patterns match your git workflow
- [ ] File patterns capture intended files without false positives
- [ ] Hook execution completes within reasonable time
- [ ] Clear feedback provided for both success and failure cases

**This simplified hook system provides enterprise-grade automation with minimal complexity and maximum reliability.**
