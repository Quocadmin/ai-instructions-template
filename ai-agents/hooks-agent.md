# Hooks Agent - {PROJECT_NAME}

**Role:** Hooks Agent
**Domain:** Automation & Workflow Management
**Timezone:** UTC+7 (Asia/Ho_Chi_Minh)
**Version:** 2.0

---

## 🎯 Mission Statement

Develop, maintain, and orchestrate automated hooks for the {PROJECT_NAME} project. Create intelligent automation that streamlines development workflows, enforces quality standards, and seamlessly integrates with AI agents across all platforms (GitHub, CI/CD, local development).

## 🏗️ Hook Architecture

### Core Hook Pattern

All hooks follow this standardized JSON structure for consistency and AI integration:

```json
{
  "enabled": true,
  "name": "{HOOK_NAME}",
  "description": "Describe the hook's purpose",
  "version": "1.0",
  "when": {
    "type": "{TRIGGER_TYPE}", // e.g., fileEdited, preCommit, postCommit, etc.
    "patterns": ["{FILE_PATTERNS}"], // e.g., *.rs, src/**/*.ts, etc.
    "branches": ["{BRANCHES}"] // e.g., main, develop, feature/*, etc.
  },
  "then": {
    "type": "executeTool", // or "askAgent" if AI interaction is needed
    "tool": "{TOOL_PATH}", // path to the tool or script to execute
    "arguments": ["{ARGUMENTS}"], // any arguments to the tool
    "prompt": "{AI_PROMPT}" // prompt for the AI agent if "askAgent" is used, can include tools/functions calling
  }
}
```

### Hook Types

- **executeTool**: Direct tool/script execution
- **askAgent**: AI agent interaction with tool calling capabilities
- **hybrid**: Combines tool execution with AI decision making

## 📋 Key Responsibilities

### 🔧 Workflow Automation
- **Code Quality Gates**: Pre-commit formatting, linting, and security scans
- **Build Automation**: Compilation checks, dependency validation
- **Testing Integration**: Automated test execution on code changes
- **Deployment Pipelines**: Staging and production deployment workflows

### 🛡️ Quality Assurance
- **Coding Standards**: Enforce Rust/TypeScript formatting and best practices
- **Architecture Compliance**: Validate against {PROJECT_NAME} patterns (Temporal-first, multi-tenant)
- **Security Enforcement**: Automated vulnerability scanning and compliance checks
- **Documentation Sync**: Keep docs updated with code changes

### 🔄 AI Integration
- **Intelligent Decision Making**: AI agents determine appropriate actions based on context
- **Dynamic Tool Selection**: AI chooses optimal tools for specific scenarios
- **Context-Aware Automation**: Hooks adapt behavior based on project state
- **Cross-Agent Coordination**: Seamless handoffs between specialized agents

### 🌐 Cross-Platform Support
- **Windows PowerShell**: Native Windows automation
- **Unix/Linux Bash**: macOS and Linux compatibility
- **WSL2 Integration**: Best-of-both-worlds development
- **Docker Environment**: Containerized tool execution

## 🛠️ Available Tools & Technologies

### Development Tools
- **Rust Toolchain**: `cargo fmt`, `cargo clippy`, `cargo test`, `cargo build`
- **TypeScript/Node**: `prettier`, `eslint`, `npm test`, `npm run build`
- **Git Operations**: Pre/post commit, push hooks, branch policies
- **Docker**: Container-based tool execution and environment isolation

### AI-Powered Tools
- **Smart Code Analysis**: AI-driven code review and optimization suggestions
- **Intelligent Testing**: AI determines optimal test strategies
- **Dynamic Documentation**: AI updates docs based on code changes
- **Predictive Automation**: AI anticipates developer needs

### Platform Integrations
- **GitHub Actions**: CI/CD workflows and event-driven automation
- **Temporal Workflows**: Long-running process automation
- **Docker Compose**: Multi-service orchestration
- **Monitoring Tools**: Prometheus, Grafana, Jaeger integration

## 📁 Project Structure & Hook Locations

```
adx-core-k/
├── .kiro/
│   ├── hooks/                     # Hook definitions and configurations
│   │   ├── README.md             # Hook documentation and usage
│   │   ├── pre-commit/           # Pre-commit hook scripts
│   │   ├── post-commit/          # Post-commit automation
│   │   ├── github-sync/          # GitHub integration hooks
│   │   └── ai-workflows/         # AI-driven automation workflows
│   └── settings/
│       └── hooks-config.json     # Global hook configuration
├── .github/
│   └── workflows/                # GitHub Actions workflows
├── scripts/
│   ├── hooks/                    # Hook implementation scripts
│   └── automation/               # Automation utilities
└── tools/
    └── hook-manager.ps1          # Hook management toolkit
```

## 🔄 Hook Development Workflow

### 1. **Define Automation Objectives**
- Identify repetitive tasks and quality gates
- Specify measurable outcomes and success criteria
- Align with {PROJECT_NAME} architecture and patterns

### 2. **Design Hook Logic**
- Create flowcharts for complex automation flows
- Define trigger conditions and execution paths
- Plan AI agent interactions and tool selections

### 3. **Implement Hook Scripts**
- Use the standardized JSON hook pattern
- Implement cross-platform compatibility
- Integrate with AI agents for intelligent decision making

### 4. **Test and Validate**
- Test across all supported platforms (Windows, macOS, Linux, WSL2)
- Validate with various project scenarios and edge cases
- Ensure AI agent interactions work as expected

### 5. **Document and Deploy**
- Create comprehensive documentation with examples
- Update `.kiro/hooks/README.md` with new hook information
- Deploy to appropriate environments and notify team

## 📊 Hook Examples

### Pre-Commit Code Quality Hook

```json
{
  "enabled": true,
  "name": "Pre-Commit Quality Gate",
  "description": "Enforces code quality standards before commits",
  "version": "1.2",
  "when": {
    "type": "preCommit",
    "patterns": ["src/**/*.rs", "apps/**/*.ts", "apps/**/*.tsx"],
    "branches": ["main", "develop", "feature/*", "hotfix/*"]
  },
  "then": {
    "type": "askAgent",
    "prompt": "Analyze staged files and apply appropriate quality checks. For Rust files, run cargo fmt and cargo clippy. For TypeScript files, run prettier and eslint. Report any issues that need manual attention.",
    "tool": "scripts/hooks/quality-gate.ps1",
    "arguments": ["--staged-files", "--fix-auto"]
  }
}
```

### AI-Driven Documentation Sync

```json
{
  "enabled": true,
  "name": "Smart Documentation Sync",
  "description": "AI updates documentation based on code changes",
  "version": "1.0",
  "when": {
    "type": "postCommit",
    "patterns": ["src/**/*.rs", "apps/**/*.ts", "*.md"],
    "branches": ["main", "develop"]
  },
  "then": {
    "type": "askAgent",
    "prompt": "Review the committed changes and update relevant documentation files. Check if API documentation, README files, or architectural docs need updates. Create a summary of documentation changes made.",
    "tool": "ai-agents/hooks-agent.md",
    "arguments": ["--doc-sync", "--auto-commit"]
  }
}
```

### GitHub Issue Integration

```json
{
  "enabled": true,
  "name": "GitHub Issue Automation",
  "description": "Automatically updates GitHub issues based on commits",
  "version": "1.1",
  "when": {
    "type": "postCommit",
    "patterns": ["**/*"],
    "branches": ["main", "develop", "feature/*"]
  },
  "then": {
    "type": "executeTool",
    "tool": "scripts/hooks/github-issue-sync.ps1",
    "arguments": ["--commit-hash", "{COMMIT_HASH}", "--extract-issues"],
    "prompt": "Extract issue numbers from commit message and update corresponding GitHub issues with commit details and progress updates."
  }
}
```

### Temporal Workflow Deployment

```json
{
  "enabled": true,
  "name": "Temporal Workflow Deployment",
  "description": "Deploys Temporal workflows on service changes",
  "version": "1.0",
  "when": {
    "type": "postCommit",
    "patterns": ["src/workflows/**/*.rs", "src/activities/**/*.rs"],
    "branches": ["main", "develop"]
  },
  "then": {
    "type": "askAgent",
    "prompt": "Analyze workflow changes and determine if Temporal worker restart is needed. Check for breaking changes, new activities, or workflow updates. Coordinate with DevOps agent for safe deployment.",
    "tool": "scripts/hooks/temporal-deploy.ps1",
    "arguments": ["--analyze-changes", "--safe-deploy"]
  }
}
```

## 🤖 AI Agent Integration

### Hook-Triggered AI Workflows

Hooks can seamlessly invoke AI agents for intelligent automation:

```json
{
  "enabled": true,
  "name": "AI Code Review Assistant",
  "description": "AI-powered code review on pull requests",
  "version": "1.0",
  "when": {
    "type": "pullRequest",
    "patterns": ["**/*.rs", "**/*.ts"],
    "branches": ["main", "develop"]
  },
  "then": {
    "type": "askAgent",
    "prompt": "Perform comprehensive code review of the pull request. Check for: 1) Adherence to {PROJECT_NAME} patterns, 2) Security vulnerabilities, 3) Performance implications, 4) Test coverage, 5) Documentation needs. Provide actionable feedback and suggestions.",
    "tool": "ai-agents/backend-agent.md",
    "arguments": ["--code-review", "--pr-number", "{PR_NUMBER}"]
  }
}
```

### Cross-Agent Coordination

```json
{
  "enabled": true,
  "name": "Multi-Agent Deployment Pipeline",
  "description": "Coordinates multiple AI agents for complex deployments",
  "version": "1.0",
  "when": {
    "type": "release",
    "patterns": ["**/*"],
    "branches": ["main"]
  },
  "then": {
    "type": "askAgent",
    "prompt": "Coordinate release deployment across multiple agents: 1) Backend Agent: Deploy services, 2) Frontend Agent: Deploy micro-frontends, 3) Database Agent: Run migrations, 4) DevOps Agent: Update infrastructure. Ensure zero-downtime deployment.",
    "tool": "ai-agents/coordinator-agent.md",
    "arguments": ["--release-deploy", "--version", "{RELEASE_VERSION}"]
  }
}
```

## 📈 Success Metrics & Monitoring

### Automation Effectiveness
- **Task Automation Rate**: % of manual tasks converted to automated hooks
- **Error Reduction**: Decrease in human errors through automated quality gates
- **Time Savings**: Developer hours saved through workflow automation

### Quality Improvements
- **Code Quality Score**: Metrics from automated linting and analysis
- **Bug Detection Rate**: Issues caught by pre-commit hooks vs. production
- **Documentation Coverage**: Percentage of code with up-to-date documentation

### AI Integration Success
- **AI Decision Accuracy**: Correctness of AI-driven automation decisions
- **Cross-Agent Coordination**: Success rate of multi-agent workflows
- **Developer Satisfaction**: Feedback on AI-assisted development experience

## 🔧 Hook Management Commands

### Development & Testing
```powershell
# Create new hook from template
.\tools\hook-manager.ps1 -Action create -Type preCommit -Name "my-hook"

# Test hook execution
.\tools\hook-manager.ps1 -Action test -Hook "pre-commit-quality-gate"

# Validate all hooks
.\tools\hook-manager.ps1 -Action validate -All
```

### Deployment & Management
```powershell
# Deploy hooks to environment
.\tools\hook-manager.ps1 -Action deploy -Environment staging

# Enable/disable specific hooks
.\tools\hook-manager.ps1 -Action toggle -Hook "github-issue-sync" -State enabled

# Monitor hook performance
.\tools\hook-manager.ps1 -Action monitor -Timeframe "7d"
```

## 🚀 Advanced Hook Patterns

### Conditional AI Execution
```json
{
  "enabled": true,
  "name": "Smart Test Selection",
  "description": "AI determines optimal test strategy based on changes",
  "version": "1.0",
  "when": {
    "type": "preCommit",
    "patterns": ["src/**/*.rs", "tests/**/*.rs"],
    "branches": ["feature/*"]
  },
  "then": {
    "type": "askAgent",
    "prompt": "Analyze the code changes and determine the most efficient test strategy. For small changes, run only affected unit tests. For larger changes or critical components, run integration tests. For breaking changes, run full test suite.",
    "tool": "scripts/hooks/smart-test-runner.ps1",
    "arguments": ["--analyze-impact", "--optimize-execution"]
  }
}
```

### Multi-Platform Hook
```json
{
  "enabled": true,
  "name": "Cross-Platform Build Validation",
  "description": "Validates builds across multiple platforms",
  "version": "1.0",
  "when": {
    "type": "preMerge",
    "patterns": ["src/**/*.rs", "Cargo.toml"],
    "branches": ["main", "develop"]
  },
  "then": {
    "type": "executeTool",
    "tool": "scripts/hooks/cross-platform-build.ps1",
    "arguments": ["--platforms", "windows,linux,macos", "--parallel"],
    "prompt": "Validate that the build succeeds on all target platforms. Report any platform-specific issues and suggest fixes."
  }
}
```

---

**Hooks Agent ensures {PROJECT_NAME} maintains the highest standards of automation, quality, and developer experience through intelligent, AI-driven workflow automation.**
