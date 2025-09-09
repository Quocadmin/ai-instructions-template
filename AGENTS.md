<!--
    🚨 AI INSTRUCTIONS TEMPLATE (FAANG Method)

    This template provides a comprehensive framework for AI-assisted software development
    using the Kiro methodology. Customize this template for your specific project needs.

    TEMPLATE VERSION: 1.0
    CREATED: {CURRENT_DATE}
    TARGET: Universal (All AI Platforms)
    METHODOLOGY: Kiro Framework

    🔄 SYNCHRONIZED FROM: AGENTS.md (MASTER FILE)
    ⚡ AUTO-SYNC ACTIVE: Changes to this file automatically trigger synchronization across all AI platforms
    🎯 HOOK LOCATION: .kiro/hooks/ai-instructions-auto-sync.kiro.hook
    📊 PLATFORMS SYNCED: GitHub Copilot, Claude AI, VS Code, Zed Editor, Documentation
    🛡️ BACKUP PROTECTED: Automatic backup before every sync operation
-->

# AI Instructions - {PROJECT_NAME} ({ENHANCEMENT_LEVEL} Template)

<!--
    ⚠️ CRITICAL: MULTI-PLATFORM AI SYNCHRONIZATION

    This file is the MASTER source for all AI instructions.
    ALL changes must be synchronized across platforms using:
    ./tools/ai-instructions-sync.{SCRIPT_EXT} -Action sync-all

    AI PLATFORM FILES THAT MUST BE SYNCHRONIZED:
    - AGENTS.md (THIS FILE - MASTER SOURCE)
    - .github/copilot-instructions.md (GitHub Copilot)
    - CLAUDE.md (Claude AI platform - ROOT LEVEL)
    - GEMINI.md (Google Gemini AI platform - ROOT LEVEL)
    - .vscode/README.md (VS Code)
    - .zed/README.md (Zed Editor)

    MULTI-OS SUPPORT REQUIREMENTS:
    - Windows: PowerShell + {CONTAINER_TECH}
    - macOS/Linux: Bash + {CONTAINER_TECH}
    - WSL2: {WSL_PROJECT_PATH} (RECOMMENDED)

    🚨 PATH STRUCTURE RULES:
    - ALL paths use forward slashes: /
    - ALL files start from project root: {PROJECT_ROOT}/
    - Kiro specs go in: .kiro/specs/{PROJECT_NAME}/
    - AI agents go in: ai-agents/{agent}.md
    - Platform files are in their respective directories

    NEVER edit platform files directly - always edit THIS master file!
-->

## 🎯 Core Mission

As an AI assistant working on **{PROJECT_NAME}**, your primary objective is to help build, maintain, and evolve a {PROJECT_TYPE} using the Kiro methodology, proven patterns, intelligent automation, and {ENHANCEMENT_LEVEL} engineering excellence.

**🔄 MASTER SOURCE ACTIVE**
- ✅ This file is the MASTER source for all AI instruction platforms
- ⚡ Any changes automatically sync across all AI platforms
- 🛡️ Automatic backup protection before every sync
- 📊 Comprehensive validation ensures consistency
- 🎯 Edit this file → All platforms updated automatically

### **🚀 {ENHANCEMENT_LEVEL} Features**
- **{RELIABILITY_FRAMEWORK} Reliability**: {RELIABILITY_DESCRIPTION}
- **{INTELLIGENCE_FRAMEWORK} Intelligence**: {INTELLIGENCE_DESCRIPTION}
- **{SCALE_FRAMEWORK} Scale**: {SCALE_DESCRIPTION}
- **{RESILIENCE_FRAMEWORK} Resilience**: {RESILIENCE_DESCRIPTION}
- **{UX_FRAMEWORK} UX**: {UX_DESCRIPTION}

### **🔄 AUTOMATIC SYNCHRONIZATION ACTIVE**
- ✅ This file is monitored by intelligent automation hooks
- ⚡ Any changes automatically sync across all AI platforms
- 🛡️ Automatic backup protection before every sync
- 📊 Comprehensive validation ensures consistency
- 🎯 Edit this file → All platforms updated automatically

## 🏗️ Enhanced Project Context

- **Project**: {PROJECT_NAME}
- **Project Type**: {PROJECT_TYPE}
- **Technology Stack**: {TECHNOLOGY_STACK}
- **Architecture**: {ARCHITECTURE_PATTERN}
- **Team Size**: {TEAM_SIZE}
- **Development Phase**: {DEVELOPMENT_PHASE}
- **Primary Language**: {PRIMARY_LANGUAGE}
- **Framework**: {PRIMARY_FRAMEWORK}
- **Database**: {DATABASE_TECH}
- **Infrastructure**: {INFRASTRUCTURE_TECH}
- **Enhancement Level**: {ENHANCEMENT_LEVEL}

## Core Directives (Kiro Method)

### 🎯 **Primary Rules**
- **IDE Tools First**: Use built-in diagnostics, language servers, integrated terminals before external calls
- **Timezone**: All datetime operations use {TIMEZONE}
- **Real Time Only**: Never fake timestamps, always use actual current time
- **Multi-Platform Sync**: Update all AI instruction files simultaneously across all OS
- **Cross-OS Compatibility**: Support Windows, macOS, Linux, WSL2 seamlessly

### 📁 **CRITICAL PATH RULES (Kiro Framework)**
- **ALWAYS use relative paths**: All paths are relative to project root (no {PROJECT_ROOT}/ prefix)
- **Kiro Specs Location**: `.kiro/specs/[project-name]/` for all specifications
- **Kiro Hooks Location**: `.kiro/hooks/[hook-name].kiro.hook` for automation hooks
- **Steering Documents**: `.kiro/steering/[decision-name].md` for ADRs and governance
- **AI Agent Files**: `ai-agents/[agent-name].md` for specialized agents
- **AI Work Sessions**: `ai-agents-works/sessions/` with single-file approach
- **Session Naming**: `{STATUS}-{timestamp}-{session-name}.md` format
- **No Deep Nesting**: Maximum 3 levels deep for new files
- **Consistent Separators**: Use forward slashes `/` in all path references
- **Feature-Specific Specs**: `.kiro/specs/[feature-name]/` for individual feature specifications

### 🚨 **WORK LOSS PREVENTION PROTOCOL (Simplified Session System)**
- **Start session IMMEDIATELY**: Use `ai-work-tracker.ps1 -Action start-session -AgentName "[agent]" -Objective "[task]"`
- **Single file per session**: Each session is one markdown file with status in filename (ACTIVE-timestamp-name.md)
- **Update frequently**: Use `update-session` action every 15-30 minutes with progress and token usage
- **Status-based organization**: ACTIVE → COMPLETED/PAUSED/CANCELLED with clear naming
- **Self-contained sessions**: All work context preserved in single markdown file

### 🏗️ **Architecture Context**
- **{ARCHITECTURE_PRIMARY}**: {ARCHITECTURE_PRIMARY_DESCRIPTION}
- **{SERVICE_PATTERN}**: {SERVICE_PATTERN_DESCRIPTION}
- **{DATABASE_PATTERN}**: {DATABASE_PATTERN_DESCRIPTION}
- **{FRONTEND_PATTERN}**: {FRONTEND_PATTERN_DESCRIPTION}
- **{BACKEND_PATTERN}**: {BACKEND_PATTERN_DESCRIPTION}
trackin
## 🚨 Critical Operating Rules ({ENHANCEMENT_LEVEL})

### **Simplified Session Management**
1. **START NEW SESSION**: Create session with descriptive objective
   ```{SCRIPT_LANG}
   ./ai-agents-works/automation/ai-work-tracker.{SCRIPT_EXT} -Action start-session -AgentName "backend-agent" -Objective "Fix compilation errors" -Priority "High"
   ```

2. **UPDATE SESSION PROGRESS**: Add progress and token usage
   ```{SCRIPT_LANG}
   ./ai-agents-works/automation/ai-work-tracker.{SCRIPT_EXT} -Action update-session -SessionFile "ACTIVE-timestamp-session-name.md" -TokensUsed 250 -Activity "Fixed import statements"
   ```

3. **COMPLETE SESSION**: Mark session as finished
   ```{SCRIPT_LANG}
   ./ai-agents-works/automation/ai-work-tracker.{SCRIPT_EXT} -Action complete-session -SessionFile "ACTIVE-timestamp-session-name.md" -Activity "All objectives completed"
   ```

### **{RELIABILITY_FRAMEWORK}-Style Validation Rules**
- **Always validate before executing**: Check file existence, permissions, dependencies
- **Use error budgets**: Target {ERROR_BUDGET_TARGET} error rate for AI operations
- **Implement graceful degradation**: Fallback strategies for every operation
- **Monitor and alert**: Track AI operation success rates and performance

### **{INTELLIGENCE_FRAMEWORK}-Style Adaptive Learning**
- **Context awareness**: Understand project phase, team dynamics, technical constraints
- **Pattern recognition**: Learn from successful approaches and apply to similar problems
- **Predictive assistance**: Anticipate next steps based on current context
- **Personalization**: Adapt to individual developer preferences and patterns

## Agent Specialization (Kiro Framework)

### **Core Development**
- `architect-agent.md` → System design, ADRs, technical strategy
- `backend-agent.md` → {BACKEND_TECH}, {WORKFLOW_TECH}, database
- `frontend-agent.md` → {FRONTEND_TECH}, {MODULE_TECH}
- `database-agent.md` → {DATABASE_TECH}, performance optimization
- `devops-agent.md` → Infrastructure, CI/CD, monitoring

### **Integration & Quality**
- `integration-agent.md` → Service integration, API contracts
- `qa-agent.md` → Testing automation, quality metrics
- `security-agent.md` → Security architecture, compliance

### **Management & Coordination**
- `coordinator-agent.md` → Team coordination, dependencies
- `pm-agent.md` → Project planning, stakeholders

### **Kiro Framework Agents**
- `spec-agent.md` → Requirements, design, tasks planning
- `hooks-agent.md` → Automation, GitHub sync, workflows
- `steering-agent.md` → ADRs, decisions, architecture governance

## Technical Patterns

### **Compilation Success Pattern**
```{MAIN_LANGUAGE}
// Reference: {SERVICE_EXAMPLE} (0 errors ✅)
// 1. {PATTERN_1_DESCRIPTION}
{PATTERN_1_CODE}

// 2. {PATTERN_2_DESCRIPTION}
{PATTERN_2_CODE}

// 3. {PATTERN_3_DESCRIPTION}
{PATTERN_3_CODE}
```

### **Project Structure (CANONICAL)**
```
{PROJECT_ROOT}/
├── .github/copilot-instructions.md    # THIS FILE (MASTER)
├── .kiro/                             # Kiro Framework - Architecture & specs
│   ├── specs/                         # Project specifications
│   │   ├── {PROJECT_NAME}/            # Main project specs
│   │   │   ├── requirements.md        # Core requirements specification
│   │   │   ├── design.md              # System design specification
│   │   │   └── tasks.md               # Implementation tasks
│   │   ├── {FEATURE_1}/               # Feature-specific specs
│   │   │   ├── requirements.md        # Feature requirements
│   │   │   └── tasks.md               # Feature implementation tasks
│   │   └── [feature-name]/            # Additional feature-specific specs
│   ├── steering/                      # ADRs and architectural decisions
│   │   ├── {ADR_1}.md                 # Architectural Decision Record 1
│   │   ├── {ADR_2}.md                 # Architectural Decision Record 2
│   │   └── [decision-name].md         # Additional decision records
│   ├── hooks/                         # Kiro automation hooks
│   │   ├── ai-instructions-auto-sync.kiro.hook    # AI sync automation
│   │   ├── spec-validation.kiro.hook              # Spec validation
│   │   └── [hook-name].kiro.hook                  # Custom hooks
│   └── settings/                      # Kiro configuration
│       ├── github.json                # GitHub integration settings
│       └── project.json               # Project-specific settings
├── .vscode/README.md                  # VS Code AI instructions (SYNC)
├── .zed/README.md                     # Zed Editor AI instructions (SYNC)
├── AGENTS.md                          # General AI instructions (SYNC)
├── CLAUDE.md                          # Claude AI instructions (SYNC)
├── ai-agents/                         # Specialized AI agent files
├── ai-agents-works/                   # Simplified AI work tracking system
│   ├── sessions/                      # All session files (single-file approach)
│   │   ├── ACTIVE-timestamp-session-name.md    # Active sessions
│   │   ├── COMPLETED-timestamp-session-name.md # Completed sessions
│   │   ├── PAUSED-timestamp-session-name.md    # Paused sessions
│   │   └── CANCELLED-timestamp-session-name.md # Cancelled sessions
│   ├── automation/                    # AI session management scripts
│   ├── improvements/                  # AI system improvements
│   ├── demos/                         # AI feature demonstrations
│   ├── reference/                     # AI reference documents
│   └── reports/                       # AI work reports and analysis
├── {PROJECT_MAIN_DIR}/                # Main application code
│   ├── {BACKEND_DIR}/                 # Backend services
│   ├── {FRONTEND_DIR}/                # Frontend applications
│   ├── {SHARED_DIR}/                  # Shared packages
│   └── {INFRASTRUCTURE_DIR}/          # Infrastructure configuration
└── tools/                             # Development toolkit
```

### **Development Commands**
```bash
# Smart toolkit (recommended)
./tools/smart-dev-toolkit.{SCRIPT_EXT} -Action dev-start -Service all

# Infrastructure ({CONTAINER_TECH} - all OS)
{INFRASTRUCTURE_START_COMMAND}

# Services - from {SOURCE_DIR} directory
{SERVICE_START_COMMANDS}

# Frontend - from project root
{FRONTEND_START_COMMANDS}
```

### **Error Resolution Priority**
1. **{ERROR_TYPE_1}** → {RESOLUTION_1}
2. **{ERROR_TYPE_2}** → {RESOLUTION_2}
3. **{ERROR_TYPE_3}** → {RESOLUTION_3}
4. **{ERROR_TYPE_4}** → {RESOLUTION_4}

## AI Work Tracking System (Kiro Framework)

### **Directory Structure**
```
ai-agents-works/                          # {PROJECT_ROOT}/ai-agents-works/
├── README.md                            # Simplified system documentation
├── sessions/                            # All session files (single-file approach)
│   ├── ACTIVE-timestamp-session-name.md    # Active sessions
│   ├── COMPLETED-timestamp-session-name.md # Completed sessions
│   ├── PAUSED-timestamp-session-name.md    # Paused sessions
│   └── CANCELLED-timestamp-session-name.md # Cancelled sessions
├── metrics/                            # Session metrics and analytics
│   ├── daily-metrics.csv              # Daily AI effectiveness tracking
│   └── agent-performance.json         # Success rates per agent
├── improvements/                       # AI system improvements
├── demos/                             # Feature demonstrations
├── reference/                         # Quick reference materials
├── reports/                           # Analysis and status reports
├── logs/                              # System operation logs
└── automation/                        # Enhanced automation scripts
    ├── ai-work-tracker.ps1           # Simplified session management
    ├── intelligent-router.ps1        # Smart agent selection
    └── self-healing-monitor.ps1      # Environment monitoring
```

### **Simplified Session Management Commands**
```{SCRIPT_LANG}
# 🚨 CRITICAL: Start session IMMEDIATELY to prevent work loss
./ai-agents-works/automation/ai-work-tracker.{SCRIPT_EXT} -Action start-session -AgentName "backend-agent" -Objective "Fix compilation errors" -Priority "High"

# Update session progress with token usage and activities
./ai-agents-works/automation/ai-work-tracker.{SCRIPT_EXT} -Action update-session -SessionFile "ACTIVE-timestamp-session-name.md" -TokensUsed 250 -Activity "Fixed import statements"

# Complete session when finished
./ai-agents-works/automation/ai-work-tracker.{SCRIPT_EXT} -Action complete-session -SessionFile "ACTIVE-timestamp-session-name.md" -Activity "All objectives completed"

# Pause session if interrupted
./ai-agents-works/automation/ai-work-tracker.{SCRIPT_EXT} -Action pause-session -SessionFile "ACTIVE-timestamp-session-name.md" -Activity "Waiting for DBA consultation"

# Cancel session if abandoned
./ai-agents-works/automation/ai-work-tracker.{SCRIPT_EXT} -Action cancel-session -SessionFile "ACTIVE-timestamp-session-name.md" -Activity "Alternative approach selected"

# List all sessions with optional filtering
./ai-agents-works/automation/ai-work-tracker.{SCRIPT_EXT} -Action list-sessions -Status ACTIVE
```

### **🚨 SIMPLIFIED WORK LOSS PREVENTION PROTOCOL**
```{SCRIPT_LANG}
# STEP 1: Start session IMMEDIATELY with descriptive objective
./ai-agents-works/automation/ai-work-tracker.{SCRIPT_EXT} -Action start-session -AgentName "backend-agent" -Objective "Your specific work objective" -Priority "Medium" . # Create backup work document IMMEDIATELY (in appropriate subfolder)  ./ai-agents-works/improvements/ - for AI system improvements with todos list .

# STEP 2: Work is automatically preserved in single session file
# File created: ACTIVE-timestamp-your-specific-work-objective.md
# All context, progress, and decisions preserved in one markdown file

# STEP 3: Update session frequently (every 5-10 minutes) or token got +20k
./ai-agents-works/automation/ai-work-tracker.{SCRIPT_EXT} -Action update-session -SessionFile "ACTIVE-timestamp-session-name.md" -TokensUsed [tokens] -Activity "Current progress description"

# STEP 4: Complete session when finished
./ai-agents-works/automation/ai-work-tracker.{SCRIPT_EXT} -Action complete-session -SessionFile "ACTIVE-timestamp-session-name.md" -Activity "Final completion summary"
```

### **⚠️ AUTOMATIC EXECUTION TRIGGERS**
```{SCRIPT_LANG}
# AUTOMATIC STATUS MANAGEMENT - Simple and efficient
# When session is completed:
# 1. File automatically renamed from ACTIVE- to COMPLETED-
# 2. Completion timestamp and final result added
# 3. All context preserved in single file for handoffs

# When session is paused:
# 1. File automatically renamed from ACTIVE- to PAUSED-
# 2. Pause reason and resume conditions documented
# 3. Full context preserved for later continuation

# Example: Status change during normal work
./ai-agents-works/automation/ai-work-tracker.{SCRIPT_EXT} -Action update-session -SessionFile "ACTIVE-timestamp-session.md" -TokensUsed 250 -Activity "Implemented feature X"

# Status changes happen automatically with clear file naming
# No complex archiving - just simple file status transitions
```

### **Token Management & Automatic Execution**
- **100k Token Checkpoints**: **AUTOMATIC** summary generation when threshold reached
- **Task Completion**: **AUTOMATIC** archiving when status = "completed"
- **Cross-Agent Handoffs**: Preserve context for seamless agent collaboration
- **Pattern Documentation**: Track successful approaches for reuse
- **Session Continuity**: Ready-to-use prompts for next AI agent
- **Zero Manual Effort**: All tracking happens automatically during normal AI work

### **Automatic Execution Rules**
- **Token Tracking**: Every AI agent MUST update tokens during work
- **Status Updates**: Set status to "completed" when task finished
- **AutoExecute Flag**: Use `-AutoExecute` for automatic threshold actions
- **No Intervention**: System handles 100k summaries and completion archiving
- **Continuous Tracking**: All AI work preserved without manual steps

### **Success Metrics & Tracking**
- **Compilation**: 0 errors per service using proven patterns
- **Pattern reuse**: 90%+ success rate from documented approaches
- **Cross-platform compatibility**: Windows/macOS/Linux support
- **IDE-first methodology**: Built-in tools before external calls
- **Token efficiency**: Automatic tracking optimizes AI resource usage
- **Session continuity**: 100% context preservation across agent handoffs
- **Work preservation**: Zero lost work through automatic tracking system

### **AI Agent Requirements**
- **MUST update tokens**: Use update-tokens action during significant work
- **MUST set completion status**: Use update-status when tasks complete
- **MUST use AutoExecute**: Enable automatic 100k summaries and archiving
- **MUST preserve context**: All decisions and patterns documented automatically

## Key Ports & Services

### **Infrastructure (localhost)**
- {SERVICE_1}: {PORT_1} | {SERVICE_2}: {PORT_2} | {SERVICE_3}: {PORT_3}
- {MONITORING_1}: {PORT_4} | {MONITORING_2}: {PORT_5} | {MONITORING_3}: {PORT_6}

### **Backend Services**
- {BACKEND_SERVICE_1}: {PORT_7} | {BACKEND_SERVICE_2}: {PORT_8}
- {BACKEND_SERVICE_3}: {PORT_9} | {BACKEND_SERVICE_4}: {PORT_10}

### **Frontend Apps**
- {FRONTEND_APP_1}: {PORT_11} | {FRONTEND_APP_2}: {PORT_12}

## Quick Reference Paths

### **AI Instructions & Platform Files (SYNCHRONIZED)**
- **MASTER**: `.github/copilot-instructions.md` ← THIS FILE
- **General AI**: `AGENTS.md` (ROOT LEVEL)
- **Claude AI**: `CLAUDE.md` (ROOT LEVEL)
- **Zed Editor**: `.zed/README.md`
- **VS Code**: `.vscode/README.md`

### **Specialized AI Agents**
- **Architect**: `ai-agents/architect-agent.md`
- **Backend**: `ai-agents/backend-agent.md`
- **Frontend**: `ai-agents/frontend-agent.md`
- **Database**: `ai-agents/database-agent.md`
- **DevOps**: `ai-agents/devops-agent.md`
- **Integration**: `ai-agents/integration-agent.md`
- **QA**: `ai-agents/qa-agent.md`
- **Security**: `ai-agents/security-agent.md`
- **Coordinator**: `ai-agents/coordinator-agent.md`
- **PM**: `ai-agents/pm-agent.md`
- **Spec**: `ai-agents/spec-agent.md`
- **Hooks**: `ai-agents/hooks-agent.md`
- **Steering**: `ai-agents/steering-agent.md`

### **Kiro Framework Specifications**
- **Main Requirements**: `.kiro/specs/{PROJECT_NAME}/requirements.md`
- **Main Design**: `.kiro/specs/{PROJECT_NAME}/design.md`
- **Main Tasks**: `.kiro/specs/{PROJECT_NAME}/tasks.md`
- **{FEATURE_1} Requirements**: `.kiro/specs/{FEATURE_1}/requirements.md`
- **{FEATURE_1} Tasks**: `.kiro/specs/{FEATURE_1}/tasks.md`
- **{ADR_1}**: `.kiro/steering/{ADR_1}.md`
- **{ADR_2}**: `.kiro/steering/{ADR_2}.md`
- **{ADR_3}**: `.kiro/steering/{ADR_3}.md`

### **Kiro Framework Hooks & Automation**
- **AI Instructions Sync**: `.kiro/hooks/ai-instructions-auto-sync.kiro.hook`
- **Spec Validation**: `.kiro/hooks/spec-validation.kiro.hook`
- **GitHub Integration**: `.kiro/hooks/github-sync.kiro.hook`
- **Project Settings**: `.kiro/settings/project.json`
- **GitHub Settings**: `.kiro/settings/github.json`

### **Development Tools**
- **Smart Toolkit**: `tools/smart-dev-toolkit.{SCRIPT_EXT}`
- **Environment Validator**: `tools/smart-env-validator.{SCRIPT_EXT}`
- **Command Checker**: `tools/smart-command-checker.{SCRIPT_EXT}`
- **Path Fixer**: `tools/fix-ai-instruction-paths.{SCRIPT_EXT}`
- **AI Instructions Sync**: `tools/ai-instructions-sync.{SCRIPT_EXT}`
- **Kiro Hook Manager**: `tools/kiro-hook-manager.{SCRIPT_EXT}`

### **Scripts & Automation**
- **Deploy Dev**: `scripts/deploy-dev-local.{SCRIPT_EXT}`
- **Health Check**: `scripts/health-check.{SCRIPT_EXT}`
- **Comprehensive Fix**: `scripts/comprehensive-fix.{SCRIPT_EXT}`
- **Test All**: `scripts/test-all.{SCRIPT_EXT}`

### **Key Configuration**
- **{BUILD_SYSTEM} Workspace**: `{BUILD_CONFIG_FILE}`
- **{PACKAGE_MANAGER} Workspace**: `{PACKAGE_CONFIG_FILE}`
- **{CONTAINER_TECH} Infrastructure**: `{INFRASTRUCTURE_CONFIG}`
- **GitHub Settings**: `.kiro/settings/github.json`

## Multi-OS Path Reference & File Creation Rules

### **🚨 CRITICAL: File Creation Path Rules**

**When creating ANY file, ALWAYS:**
1. **Use relative paths**: Start from project root (no {PROJECT_ROOT}/ prefix)
2. **Use forward slashes**: `/` not `\` in all paths
3. **Follow directory structure**: As defined in Project Structure section
4. **Check existing location**: Use `list_directory` before creating files

**Specific File Type Rules:**
- **Project Specs**: `.kiro/specs/[project-name]/` - Main project specifications
- **Feature Specs**: `.kiro/specs/[feature-name]/` - Feature-specific specifications
- **Steering Documents**: `.kiro/steering/[decision-name].md` - ADRs and governance
- **Kiro Hooks**: `.kiro/hooks/[hook-name].kiro.hook` - Automation hooks
- **Kiro Settings**: `.kiro/settings/[config-name].json` - Configuration files
- **AI Agents**: `ai-agents/[agent-name].md` - Specialized AI agent files
- **AI Work Documents**: `ai-agents-works/[subfolder]/[document].md`
  - `improvements/` - AI system improvements and enhancements
  - `demos/` - Feature demonstrations and examples
  - `reference/` - Quick reference and command guides
  - `reports/` - Analysis, completion reports, and status updates
- **Application Code**: `{PROJECT_MAIN_DIR}/[{BACKEND_DIR}|{FRONTEND_DIR}|{SHARED_DIR}]/`
- **Documentation**: Root level for project docs, subfolders for AI work docs

### **Project Root Paths (CANONICAL)**

**Windows PowerShell:**
- Project Root: `{WINDOWS_PROJECT_PATH}`
- Navigation: `Push-Location "{WINDOWS_PROJECT_PATH}"; {COMMAND}; Pop-Location`
- Container: `Push-Location "{WINDOWS_PROJECT_PATH}/{INFRASTRUCTURE_DIR}"; {CONTAINER_COMMAND}; Pop-Location`

**macOS/Linux Bash:**
- Project Root: `{UNIX_PROJECT_PATH}`
- Navigation: `cd {UNIX_PROJECT_PATH} && {COMMAND}`
- Container: `cd {UNIX_PROJECT_PATH}/{INFRASTRUCTURE_DIR} && {CONTAINER_COMMAND}`

**WSL2 (Recommended for Windows):**
- Project Root: `{WSL_PROJECT_PATH}`
- Navigation: `cd {WSL_PROJECT_PATH} && {COMMAND}`
- Container: `cd {WSL_PROJECT_PATH}/{INFRASTRUCTURE_DIR} && {CONTAINER_COMMAND}`

### **📂 File Creation Examples (CORRECT)**
```
✅ CORRECT: .kiro/specs/{PROJECT_NAME}/requirements.md
✅ CORRECT: .kiro/specs/{FEATURE_1}/requirements.md
✅ CORRECT: .kiro/steering/{ADR_1}.md
✅ CORRECT: .kiro/hooks/ai-instructions-auto-sync.kiro.hook
✅ CORRECT: .kiro/settings/project.json
✅ CORRECT: ai-agents/backend-agent.md
✅ CORRECT: ai-agents-works/improvements/AI-INSTRUCTION-IMPROVEMENTS.md
✅ CORRECT: ai-agents-works/reports/PROJECT-COMPLETION-SUMMARY.md
✅ CORRECT: ai-agents-works/reference/AI-QUICK-REFERENCE.md
✅ CORRECT: ai-agents-works/demos/AI-AUTOMATIC-EXECUTION-DEMO.md
✅ CORRECT: {PROJECT_MAIN_DIR}/{BACKEND_DIR}/{SERVICE_NAME}/src/main.{MAIN_EXT}

❌ WRONG: {PROJECT_ROOT}/.kiro/specs/{FEATURE_1}/requirements.md (includes project root)
❌ WRONG: AI-INSTRUCTION-IMPROVEMENTS.md (at root level)
❌ WRONG: ai-agents-works/AI-INSTRUCTION-IMPROVEMENTS.md (no subfolder)
❌ WRONG: {PROJECT_NAME_UPPER}/.kiro/specs/{FEATURE_1}/requirements.md
❌ WRONG: .kiro\specs\{FEATURE_1}\requirements.md (wrong separators)
❌ WRONG: kiro/hooks/sync.hook (missing .kiro prefix and .kiro.hook extension)
```

### **🚨 SIMPLIFIED WORK LOSS PREVENTION - MANDATORY STEPS**
```bash
# STEP 1: ALWAYS create session FIRST - single command creates everything
./ai-agents-works/automation/ai-work-tracker.{SCRIPT_EXT} -Action start-session -AgentName "agent-name" -Objective "work objective" -Priority "Medium"

# STEP 2: Work is automatically preserved in status-named file
# File created: ACTIVE-timestamp-work-objective.md
# All context preserved in single self-contained markdown file

# STEP 3: Update session regularly (every 15-30 minutes)
./ai-agents-works/automation/ai-work-tracker.{SCRIPT_EXT} -Action update-session -SessionFile "ACTIVE-timestamp-work-objective.md" -TokensUsed [tokens] -Activity "progress description"

# STEP 4: Complete when done - file automatically renamed to COMPLETED-
./ai-agents-works/automation/ai-work-tracker.{SCRIPT_EXT} -Action complete-session -SessionFile "ACTIVE-timestamp-work-objective.md" -Activity "final summary"
```

## OS-Specific Development Commands

### **Windows PowerShell**
```powershell
# Smart toolkit (recommended)
./tools/smart-dev-toolkit.ps1 -Action dev-start -Service all

# Infrastructure setup
Push-Location "{WINDOWS_PROJECT_PATH}/{INFRASTRUCTURE_DIR}"; {CONTAINER_COMMAND}; Pop-Location

# Backend services
Push-Location "{WINDOWS_PROJECT_PATH}/{SOURCE_DIR}"; {BACKEND_COMMAND}; Pop-Location

# Frontend development
Push-Location "{WINDOWS_PROJECT_PATH}"; {FRONTEND_COMMAND}; Pop-Location
```

### **macOS/Linux Bash**
```bash
# Smart toolkit (if available)
./tools/smart-dev-toolkit.sh --action dev-start --service all

# Infrastructure setup
cd {UNIX_PROJECT_PATH}/{INFRASTRUCTURE_DIR} && {CONTAINER_COMMAND}

# Backend services
cd {UNIX_PROJECT_PATH}/{SOURCE_DIR} && {BACKEND_COMMAND}

# Frontend development
cd {UNIX_PROJECT_PATH} && {FRONTEND_COMMAND}
```

### **WSL2 (Windows Subsystem for Linux)**
```bash
# Environment setup and infrastructure
cd {WSL_PROJECT_PATH} && source {ENVIRONMENT_SETUP}

# Infrastructure setup
cd {WSL_PROJECT_PATH}/{INFRASTRUCTURE_DIR} && {CONTAINER_COMMAND}

# Backend services
cd {WSL_PROJECT_PATH}/{SOURCE_DIR} && {BACKEND_COMMAND}

# Frontend development
cd {WSL_PROJECT_PATH} && {FRONTEND_COMMAND}

# Multi-terminal development
# Terminal 1: {SERVICE_1}
wsl -d Ubuntu -e bash -c "cd {WSL_PROJECT_PATH}/{SOURCE_DIR} && source {ENVIRONMENT_SETUP} && {SERVICE_1_COMMAND}"

# Terminal 2: {SERVICE_2}
wsl -d Ubuntu -e bash -c "cd {WSL_PROJECT_PATH}/{SOURCE_DIR} && source {ENVIRONMENT_SETUP} && {SERVICE_2_COMMAND}"
```

## Kiro Framework Hook Configuration

### **🎛️ Hook Configuration & Management**

#### **Centralized Hook Management**
```{SCRIPT_LANG}
# Initialize all Kiro hooks
./tools/ai-instructions-sync.{SCRIPT_EXT} -Action init-hooks

# Validate hook configuration
./tools/ai-instructions-sync.{SCRIPT_EXT} -Action validate-hooks

# View hook status
{HOOK_STATUS_COMMAND}
```

#### **Hook Types & Purposes**

##### **1. AI Instructions Auto-Synchronization Hook**
**Purpose**: Maintains consistency across all AI platforms automatically
**Location**: `.kiro/hooks/ai-instructions-auto-sync.kiro.hook`
**Configuration**:
```json
{
  "name": "ai-instructions-auto-sync",
  "description": "Automatically sync AI instructions across all platforms",
  "trigger": "file_change",
  "watch_paths": [
    ".github/copilot-instructions.md",
    "AGENTS.md",
    "CLAUDE.md",
    ".vscode/README.md",
    ".zed/README.md"
  ],
  "action": "sync-all-platforms",
  "enabled": true,
  "auto_commit": true
}
```

##### **2. Specification Validation Hook**
**Purpose**: Validates Kiro specifications for completeness and consistency
**Location**: `.kiro/hooks/spec-validation.kiro.hook`
**Configuration**:
```json
{
  "name": "spec-validation",
  "description": "Validate Kiro specifications for completeness",
  "trigger": "file_change",
  "watch_paths": [
    ".kiro/specs/**/*.md",
    ".kiro/steering/**/*.md"
  ],
  "action": "validate-specifications",
  "enabled": true,
  "fail_on_error": false
}
```

##### **3. GitHub Integration Hook**
**Purpose**: Synchronizes Kiro specifications with GitHub issues and projects
**Location**: `.kiro/hooks/github-sync.kiro.hook`
**Configuration**:
```json
{
  "name": "github-sync",
  "description": "Sync Kiro specs with GitHub issues",
  "trigger": "manual",
  "action": "sync-github-integration",
  "enabled": true,
  "settings_file": ".kiro/settings/github.json"
}
```

#### **Hook Management Commands**
```{SCRIPT_LANG}
# List all hooks and their status
./tools/kiro-hook-manager.{SCRIPT_EXT} -Action list

# Enable specific hook
./tools/kiro-hook-manager.{SCRIPT_EXT} -Action enable -Hook ai-instructions-auto-sync

# Disable specific hook
./tools/kiro-hook-manager.{SCRIPT_EXT} -Action disable -Hook spec-validation

# Run hook manually
./tools/kiro-hook-manager.{SCRIPT_EXT} -Action run -Hook github-sync

# Validate all hook configurations
./tools/kiro-hook-manager.{SCRIPT_EXT} -Action validate-all
```

## Critical Multi-OS AI Agent Rules

### **Platform-Specific Path Handling**
- **Windows**: ALWAYS use Push-Location/Pop-Location for directory changes
- **macOS/Linux**: Standard `cd` commands work reliably
- **WSL2**: Standard Linux paths with Windows drive mounts (`/mnt/{drive}/`)
- **Never assume**: Current directory persistence across tool calls
- **Always validate**: Commands before execution with OS-appropriate syntax

### **Cross-Platform Development Support**
- **Windows**: PowerShell + {CONTAINER_TECH} + WSL2 (recommended)
- **macOS**: Native Unix environment + {CONTAINER_TECH}
- **Linux**: Native development environment + {CONTAINER_TECH}
- **WSL2**: Best of both worlds - Linux tools with Windows integration
- **IDE**: {IDE_1} ({IDE_1_FOCUS}), {IDE_2} (Universal), Kiro (Architecture)

### **Multi-OS Synchronization Requirements**
- **CRITICAL**: All AI instruction changes must sync across ALL platforms
- **Sync Command**: `./tools/ai-instructions-sync.{SCRIPT_EXT} -Action sync-all`
- **Validation**: `./tools/ai-instructions-sync.{SCRIPT_EXT} -Action validate`
- **Auto-sync**: Triggered by Kiro hooks on instruction file changes

## Template Customization Guide

### **Required Replacements**
Replace these placeholders with your project-specific values:

- `{PROJECT_NAME}` → Your project name
- `{PROJECT_ROOT}` → Your project root directory name
- `{CURRENT_DATE}` → Current date when creating instructions
- `{TIMEZONE}` → Your project timezone (e.g., "UTC", "America/New_York")
- `{WSL_PROJECT_PATH}` → WSL2 path to your project
- `{WINDOWS_PROJECT_PATH}` → Windows path to your project
- `{UNIX_PROJECT_PATH}` → Unix/Linux path to your project

### **Architecture Patterns**
- `{ARCHITECTURE_PATTERN}` → Primary architecture (e.g., "Microservices", "Monolith")
- `{SERVICE_PATTERN}` → Service pattern (e.g., "Event-driven", "REST APIs")
- `{DATABASE_PATTERN}` → Database pattern (e.g., "Multi-tenant PostgreSQL")
- `{FRONTEND_PATTERN}` → Frontend pattern (e.g., "React SPA", "Next.js")
- `{BACKEND_PATTERN}` → Backend pattern (e.g., "Node.js", "Rust services")

### **Technology Stack**
- `{MAIN_LANGUAGE}` → Primary language (e.g., "rust", "javascript", "python")
- `{BACKEND_TECH}` → Backend technology (e.g., "Rust", "Node.js", "Python")
- `{FRONTEND_TECH}` → Frontend technology (e.g., "React", "Vue", "Angular")
- `{DATABASE_TECH}` → Database technology (e.g., "PostgreSQL", "MongoDB")
- `{CONTAINER_TECH}` → Container technology (e.g., "Docker", "Podman")
- `{BUILD_SYSTEM}` → Build system (e.g., "Cargo", "npm", "Maven")

### **Enhancement Framework**
- `{ENHANCEMENT_LEVEL}` → Enhancement level (e.g., "FAANG-Enhanced", "Enterprise")
- `{RELIABILITY_FRAMEWORK}` → Reliability framework (e.g., "Google SRE", "Netflix")
- `{INTELLIGENCE_FRAMEWORK}` → Intelligence framework (e.g., "Meta Intelligence")
- `{SCALE_FRAMEWORK}` → Scale framework (e.g., "Amazon Scale")
- `{RESILIENCE_FRAMEWORK}` → Resilience framework (e.g., "Netflix Resilience")
- `{UX_FRAMEWORK}` → UX framework (e.g., "Apple UX")

### **Directory Structure**
- `{SOURCE_DIR}` → Main source directory (e.g., "src", "app", "adx-core")
- `{BACKEND_DIR}` → Backend directory (e.g., "services", "api", "server")
- `{FRONTEND_DIR}` → Frontend directory (e.g., "apps", "client", "web")
- `{PACKAGES_DIR}` → Shared packages (e.g., "packages", "shared", "libs")
- `{INFRASTRUCTURE_DIR}` → Infrastructure (e.g., "infrastructure", "ops", "deploy")

### **Configuration Files**
- `{BUILD_CONFIG_FILE}` → Build config (e.g., "Cargo.toml", "package.json")
- `{PACKAGE_CONFIG_FILE}` → Package config (e.g., "package.json", "pom.xml")
- `{INFRASTRUCTURE_CONFIG}` → Infrastructure config (e.g., "docker-compose.yml")

### **Commands & Scripts**
- `{SCRIPT_EXT}` → Script extension (e.g., "ps1", "sh", "py")
- `{SCRIPT_LANG}` → Script language (e.g., "powershell", "bash", "python")
- `{FILE_EXT}` → Main file extension (e.g., "rs", "js", "py")
- `{CONTAINER_COMMAND}` → Container start command
- `{BACKEND_COMMAND}` → Backend start command
- `{FRONTEND_COMMAND}` → Frontend start command

### **Services & Ports**
- `{SERVICE_1}`, `{SERVICE_2}`, etc. → Your services
- `{PORT_1}`, `{PORT_2}`, etc. → Port numbers
- `{BACKEND_SERVICE_1}`, etc. → Backend service names
- `{FRONTEND_APP_1}`, etc. → Frontend app names

### **Features & ADRs**
- `{FEATURE_1}`, `{FEATURE_2}` → Your project features
- `{ADR_1}`, `{ADR_2}`, `{ADR_3}` → Your Architecture Decision Records

### **Examples & Patterns**
- `{SERVICE_EXAMPLE}` → Example service name
- `{PATTERN_1_DESCRIPTION}`, etc. → Technical pattern descriptions
- `{PATTERN_1_CODE}`, etc. → Code examples
- `{ERROR_TYPE_1}`, etc. → Common error types
- `{RESOLUTION_1}`, etc. → Error resolutions

This template provides the complete Kiro methodology framework with {ENHANCEMENT_LEVEL} capabilities. Customize the placeholders above to match your specific project requirements and technology stack.
