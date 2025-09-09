# Zed Editor AI Instructions - [PROJECT_NAME] (FAANG-Enhanced)

<!--
🔄 SYNCHRONIZED FROM: AGENTS.md (MASTER SOURCE)

This file is automatically synchronized across all AI platforms.
DO NOT edit directly - edit the master file and run sync:
.\tools\ai-instructions-sync.ps1 -Action sync-all

AI PLATFORM FILES THAT MUST BE SYNCHRONIZED:
- AGENTS.md (MASTER SOURCE - ROOT LEVEL)
- .github/copilot-instructions.md (GitHub Copilot)
- CLAUDE.md (Claude AI platform - ROOT LEVEL)
- GEMINI.md (Google Gemini AI platform - ROOT LEVEL)
- .vscode/README.md (VS Code)
- .zed/README.md (THIS FILE - Zed Editor)

NEVER edit platform files directly - always edit the master file (AGENTS.md)!
-->

This file contains Zed Editor-specific AI instructions optimized for Zed's performance, AI integration, modern development workflow, and FAANG-level engineering excellence.

**🔄 AUTOMATIC SYNCHRONIZATION ACTIVE**
- ✅ This file is synchronized from the master source (AGENTS.md)
- ⚡ Changes to master automatically sync to all AI platforms  
- 🛡️ Automatic backup protection before every sync
- 📊 Comprehensive validation ensures consistency
- 🎯 Edit AGENTS.md → All platforms updated automatically

**🚀 FAANG-Enhanced Zed Features**
- **Google-Style Performance**: Sub-second operations with SRE-level reliability
- **Meta-Style Intelligence**: Context-aware AI with team collaboration patterns
- **Amazon-Style Scale**: Handle codebases from 1K to 10M+ lines efficiently
- **Netflix-Style Reliability**: Self-healing workspace with automatic error recovery
- **Apple-Style UX**: Delightfully fast and intuitive development experience

## 🎯 Zed Integration Mission

As an AI assistant working within **Zed Editor** on **[PROJECT_NAME]**, leverage Zed's blazing-fast performance, built-in AI capabilities, collaborative features, and modern development tools to provide efficient, responsive development assistance.

## 🚀 Zed-Specific Capabilities

### **Performance Excellence**
- **Instant Startup**: Sub-second editor startup for immediate productivity
- **Lightning Search**: Extremely fast project-wide search and navigation
- **Responsive UI**: No lag or delay in editor interactions
- **Efficient Memory**: Minimal resource usage for large codebases
- **Native Speed**: Rust-based performance for all operations

### **Built-in AI Integration**
- **Native AI Assistant**: Integrated AI chat and code assistance
- **Context-Aware Suggestions**: AI understands your project structure
- **Collaborative AI**: Share AI conversations with team members
- **Inline AI**: AI assistance directly in the editor without context switching

### **Modern Development Features**
- **Language Server Protocol**: Full LSP support for intelligent code features
- **Multi-cursor Editing**: Efficient bulk code modifications
- **Live Collaboration**: Real-time collaborative editing
- **Git Integration**: Seamless version control workflow
- **Terminal Integration**: Built-in terminal for development commands

## 🚨 Zed-Specific Operating Rules

### **Simplified AI Work Session Management in Zed**
```bash
# Zed-optimized simplified session tracking
.\\ai-agents-works\\automation\\ai-work-tracker.ps1 -Action start-session -AgentName "zed-integrated" -Objective "Development task" -Priority "Medium"

# Update session progress with token usage
.\\ai-agents-works\\automation\\ai-work-tracker.ps1 -Action update-session -SessionFile "ACTIVE-timestamp-development-task.md" -TokensUsed 200 -Activity "Fixed compilation errors"

# Complete session when finished
.\\ai-agents-works\\automation\\ai-work-tracker.ps1 -Action complete-session -SessionFile "ACTIVE-timestamp-development-task.md" -Activity "All objectives completed"

# List sessions for quick overview
.\\ai-agents-works\\automation\\ai-work-tracker.ps1 -Action list-sessions -Status ACTIVE

# Zed's integrated AI works seamlessly with session tracking
# Sessions are stored as: ai-agents-works/sessions/{STATUS}-{timestamp}-{session-name}.md
```

### **Zed AI Assistant Integration with Session Tracking**
- **Native AI Chat**: Use Zed's built-in AI assistant for immediate help with session context
- **Session-Aware Context**: AI understands current session objectives and progress
- **Collaborative Sessions**: Share session files with team members for seamless handoffs
- **Inline Session Updates**: Update session progress directly from Zed's terminal

### **Performance-Optimized Development (Google SRE-Inspired)**
- **Fast File Switching**: Use Zed's instant file navigation (Cmd/Ctrl+P) with sub-100ms response
- **Quick Symbol Search**: Navigate to functions/classes instantly (Cmd/Ctrl+Shift+O) with intelligent ranking
- **Project-wide Search**: Lightning-fast search across entire codebase with regex support
- **Multi-buffer Editing**: Work with multiple files simultaneously without performance impact
- **Real-time Collaboration**: Share development sessions with team members for pair programming
- **Memory Efficiency**: Handle large projects (10M+ lines) with minimal resource usage

## 🏗️ Kiro Framework Integration for Zed

### **Enhanced Path Rules for Zed**
- **AI Work Sessions**: `ai-agents-works/sessions/` for all session files
  - Quick access: `Cmd/Ctrl+P` → `ai-agents-works/sessions/ACTIVE-` (shows active sessions)
  - Fast navigation between session statuses: ACTIVE, COMPLETED, PAUSED, CANCELLED
  - Zed's search for finding sessions by objective or agent name
- **Kiro Specs Location**: `.kiro/specs/[project-name]/` for all specifications
  - Quick access: `Cmd/Ctrl+P` → `.kiro/specs/[project-name]/requirements.md`
  - Fast navigation between: `requirements.md`, `design.md`, `tasks.md`
- **Feature Specs**: `.kiro/specs/[feature-name]/` for feature-specific specifications
  - Zed's instant search for cross-referencing specifications
  - Symbol navigation within specification documents
- **Kiro Hooks**: `.kiro/hooks/[hook-name].kiro.hook` for automation hooks
  - JSON syntax highlighting and validation for hook configuration
  - Fast editing of automation rules with intelligent suggestions
- **Steering Documents**: `.kiro/steering/[decision-name].md` for ADRs
  - Markdown rendering with link navigation between related decisions
  - Quick preview of architectural diagrams and decision trees

### **Session File Management in Zed**
- **Single-File Sessions**: Each session = one markdown file with comprehensive context
- **Status-Based Organization**: File names indicate current status (ACTIVE, COMPLETED, etc.)
- **Quick Session Navigation**: Use `Cmd/Ctrl+P` to quickly find sessions by name or status
- **Real-time Editing**: Edit session files directly in Zed with markdown preview
- **Git Integration**: Session files are tracked in version control for team collaboration

### **Zed File Creation Rules (Kiro Framework)**

**Correct File Creation Examples**
```
✅ CORRECT: .kiro/specs/[PROJECT_NAME]/requirements.md
✅ CORRECT: .kiro/specs/[FEATURE_1]/requirements.md
✅ CORRECT: .kiro/steering/[ADR_1].md
✅ CORRECT: .kiro/hooks/ai-instructions-auto-sync.kiro.hook
✅ CORRECT: .kiro/settings/project.json
✅ CORRECT: ai-agents/zed-integrated.md
✅ CORRECT: ai-agents-works/improvements/ZED-PERFORMANCE-OPTIMIZATIONS.md

❌ WRONG: [PROJECT_NAME]/.kiro/specs/requirements.md (includes project root)
❌ WRONG: kiro/hooks/sync.hook (missing .kiro prefix and .kiro.hook extension)
❌ WRONG: .kiro\specs\feature\requirements.md (wrong separators)
❌ WRONG: ZED-OPTIMIZATIONS.md (at root level without subfolder)
```

### **Zed Workflow Integration**

**Kiro Specification Workflow**
1. **Open Spec**: `Cmd/Ctrl+P` → `.kiro/specs/[project-name]/requirements.md`
2. **Navigate**: Use Zed's outline view for quick TOC navigation
3. **Search**: `Cmd/Ctrl+Shift+F` for project-wide specification search
4. **Preview**: Built-in Markdown preview for architectural documents

**AI Session Integration**
1. **Start Session**: `Cmd/Ctrl+Shift+\`` (terminal) → `.\ai-agents-works\automation\ai-work-tracker.ps1`
2. **Auto-Track**: Zed's file watcher integrates with session tracking
3. **Quick Access**: `Cmd/Ctrl+P` → `ai-agents-works/active-sessions/`
4. **Collaboration**: Share AI sessions with team members in real-time

**Hook Management**
1. **Execute Hook**: Terminal integration for running Kiro hooks
2. **Real-time Status**: Zed's status bar shows hook execution progress
3. **Configuration**: JSON editing with schema validation for `.kiro.hook` files
4. **Auto-Sync**: File save triggers automatic AI instruction synchronization

## 🏗️ Zed Enhanced Project Configuration

### **Project Settings Template (FAANG-Enhanced)**
```json
{
  "languages": {
    "[LANGUAGE_1]": {
      "tab_size": 2,
      "hard_tabs": false,
      "formatter": "prettier",
      "auto_format_on_save": true
    },
    "[LANGUAGE_2]": {
      "tab_size": 4,
      "hard_tabs": false,
      "formatter": "auto",
      "auto_format_on_save": true
    },
    "markdown": {
      "tab_size": 2,
      "soft_wrap": "preferred_line_length",
      "preferred_line_length": 100
    },
    "json": {
      "tab_size": 2,
      "formatter": "prettier"
    }
  },
  "lsp": {
    "[LANGUAGE_SERVER]": {
      "binary": {
        "path": "/path/to/language-server",
        "arguments": ["--stdio"]
      },
      "settings": {
        "completions": true,
        "diagnostics": true,
        "hover": true
      }
    }
  },
  "file_associations": {
    "*.kiro.hook": "json",
    ".kiro/settings/*.json": "jsonc"
  },
  "kiro": {
    "specs": {
      "auto_validation": true,
      "base_path": ".kiro/specs/"
    },
    "hooks": {
      "auto_execution": true,
      "base_path": ".kiro/hooks/"
    },
    "ai": {
      "session_tracking": true,
      "auto_backup": true,
      "work_path": "ai-agents-works/"
    }
  },
  "terminal": {
    "shell": {
      "program": "pwsh.exe",
      "args": ["-NoLogo"]
    },
    "working_directory": ".",
    "font_size": 14
  },
  "collaboration": {
    "enabled": true,
    "auto_share_projects": false
  },
  "ai": {
    "enabled": true,
    "provider": "openai",
    "model": "gpt-4",
    "context_aware": true,
    "session_integration": true
  }
}
}
```

### **Zed Keybindings for Kiro Framework**
```json
[
{
  "context": "Editor",
  "bindings": {
    "cmd-k cmd-s": "kiro::validate_specifications",
    "cmd-k cmd-h": "kiro::run_hook",
    "cmd-k cmd-a": "ai::start_work_session",
    "cmd-k cmd-r": "kiro::open_requirements",
    "cmd-k cmd-d": "kiro::open_design",
    "cmd-k cmd-t": "kiro::open_tasks"
  }
}
]
```

### **Enhanced Terminal Configuration**
```json
{
"terminal": {
  "shell": {
      "program": "powershell",
      "args": ["-NoExit", "-Command", "cd '[PROJECT_ROOT]'"]
    }
  },
  "git": {
    "git_gutter": "tracked_files",
    "inline_blame": {
      "enabled": true
    }
  },
  "assistant": {
    "default_model": {
      "provider": "anthropic",
      "model": "claude-3-5-sonnet-20241022"
    },
    "version": "2"
  }
}
```

### **Keymap Customization**
```json
[
  {
    "context": "Editor",
    "bindings": {
      "cmd-shift-a": "ai_assistant::ToggleFocus",
      "cmd-shift-s": "ai_assistant::StartSession",
      "cmd-shift-u": "ai_assistant::UpdateProgress"
    }
  },
  {
    "context": "Terminal",
    "bindings": {
      "cmd-shift-t": "terminal_panel::ToggleFocus"
    }
  }
]
```

### **Theme and UI Configuration**
```json
{
  "theme": "One Dark",
  "ui_font_size": 16,
  "buffer_font_size": 14,
  "buffer_font_family": "JetBrains Mono",
  "ui_font_family": "Inter",
  "scrollbar": {
    "show": "auto"
  },
  "toolbar": {
    "breadcrumbs": true,
    "quick_actions": true
  }
}
```

## 🎯 Zed Agent Specialization

### **Zed-Optimized Agents**
- **`zed-integrated`**: General development with native Zed AI integration
- **`performance-agent`**: High-performance code optimization using Zed's speed
- **`collaboration-agent`**: Team collaboration using Zed's live collaboration features
- **`ai-pair-agent`**: AI pair programming with Zed's built-in AI assistant

### **Speed-Focused Agents**
- **`rapid-prototyping`**: Quick prototyping leveraging Zed's instant responsiveness
- **`refactoring-agent`**: Large-scale refactoring using Zed's multi-cursor and search
- **`navigation-agent`**: Code navigation and exploration using Zed's fast search
- **`debugging-agent`**: Quick debugging with Zed's efficient file switching

## 📋 Zed Development Workflow

### **Lightning-Fast Development Process**
```markdown
1. **Instant Project Setup**
   - Open project with instant startup
   - Configure language servers and formatters
   - Set up AI assistant and collaboration

2. **AI-Integrated Session Management**
   - Use Zed's AI panel: "Start work session on [objective]"
   - Configure automatic progress tracking
   - Leverage context-aware AI assistance

3. **High-Speed Development**
   - Use multi-cursor for bulk edits
   - Leverage instant file switching
   - Utilize project-wide search for navigation
   - Apply AI suggestions in real-time

4. **Collaborative Quality Assurance**
   - Share AI conversations with team
   - Use live collaboration for reviews
   - Leverage Zed's fast testing integration
```

### **Zed Command Palette Integration**
```markdown
# Essential Zed Commands for AI Development
- "AI Assistant: Toggle Focus" - Open/close AI panel
- "AI Assistant: Chat" - Start AI conversation
- "AI Assistant: Suggest" - Get AI code suggestions
- "Project: Search" - Lightning-fast project search
- "Go to File" - Instant file navigation
- "Go to Symbol" - Quick symbol navigation
- "Terminal: Toggle" - Built-in terminal access
```

## 🛠️ Zed-Specific Technical Patterns

### **AI-Assisted Development Pattern**
```rust
// Zed's AI-assisted development approach
// 1. Use AI assistant for architecture decisions
// 2. Leverage context-aware suggestions
// 3. Collaborate with team through shared AI conversations
// 4. Utilize instant feedback for rapid iteration

// Example: AI-guided implementation
impl ProjectService {
    // Ask Zed AI: "Help me implement user authentication with [YOUR_TECH_STACK]"
    pub async fn authenticate_user(&self, credentials: UserCredentials) -> Result<AuthToken, AuthError> {
        // AI provides context-aware implementation
        // Team can see and discuss AI suggestions in real-time
    }
}
```

### **Multi-Cursor Efficiency Pattern**
```typescript
// Zed's multi-cursor for bulk operations
// Select all instances: Cmd/Ctrl+D
// Edit multiple lines simultaneously
// Transform patterns across codebase instantly

interface UserConfig {
    id: string;          // Multi-cursor: select all 'string' and change to specific types
    name: string;        // Transform multiple similar patterns
    email: string;       // Efficient bulk modifications
    settings: string;    // Consistent changes across properties
}
```

### **Lightning Search Pattern**
```markdown
# Zed's instant search capabilities
1. **Project Search** (Cmd/Ctrl+Shift+F)
   - Find all occurrences across entire project
   - Instant results without indexing delay
   - Context-aware filtering

2. **Symbol Search** (Cmd/Ctrl+Shift+O)
   - Navigate to any function, class, or symbol
   - Fuzzy matching for approximate names
   - Cross-file symbol navigation

3. **File Search** (Cmd/Ctrl+P)
   - Open any file instantly
   - Path-based fuzzy matching
   - Recent files prioritization
```

## 📊 Zed Success Metrics

### **Performance Metrics**
- **Startup Time**: Sub-second editor initialization
- **Search Speed**: Instant project-wide search results
- **File Navigation**: Zero-delay file switching
- **AI Response Time**: Near-instant AI assistant responses
- **Memory Efficiency**: Minimal resource usage even with large projects

### **AI Integration Effectiveness**
- **Context Accuracy**: AI understands project structure and current work
- **Suggestion Relevance**: AI provides appropriate code suggestions
- **Collaboration Value**: Team benefits from shared AI conversations
- **Productivity Gain**: Measurable improvement in development speed

### **Development Efficiency**
- **Multi-cursor Usage**: Effective bulk editing operations
- **Search Utilization**: High usage of fast search capabilities
- **Collaboration Engagement**: Active use of live collaboration features
- **Terminal Integration**: Seamless command-line workflow

## 🔄 Zed Multi-Platform Excellence

### **Cross-Platform Configuration**
```json
{
  "terminal": {
    "shell": {
      "with_arguments": {
        "program": {
          "Linux": "/bin/bash",
          "macOS": "/bin/zsh",
          "Windows": "powershell"
        },
        "args": {
          "Linux": ["-l"],
          "macOS": ["-l"],
          "Windows": ["-NoExit", "-Command", "cd '[PROJECT_ROOT]'"]
        }
      }
    }
  }
}
```

### **Platform-Specific Tasks**
```json
{
  "tasks": [
    {
      "label": "Start Development Environment",
      "command": {
        "Windows": ".\\tools\\smart-dev-toolkit.ps1 -Action dev-start",
        "Linux": "./tools/smart-dev-toolkit.sh --action dev-start",
        "macOS": "./tools/smart-dev-toolkit.sh --action dev-start"
      }
    }
  ]
}
```

## 🎓 Zed Learning Integration

### **AI-Powered Learning**
```markdown
# Zed's AI for continuous learning
1. **Ask AI for Explanations**
   - "Explain this code pattern and its benefits"
   - "What are alternative approaches to this implementation?"
   - "How can I optimize this for better performance?"

2. **Collaborative Learning**
   - Share AI conversations with team members
   - Learn from others' AI interactions
   - Build collective knowledge through shared AI sessions

3. **Pattern Recognition**
   - AI learns from your coding patterns
   - Suggests improvements based on project history
   - Identifies optimization opportunities
```

### **Workflow Optimization**
```json
{
  "workflow_shortcuts": [
    {
      "trigger": "ai-session",
      "action": "Start AI work tracking session",
      "command": "ai_assistant::StartSession"
    },
    {
      "trigger": "ai-update",
      "action": "Update session progress",
      "command": "ai_assistant::UpdateProgress"
    },
    {
      "trigger": "search-all",
      "action": "Search entire project",
      "command": "project_search::ToggleFocus"
    }
  ]
}
```

## 🆘 Zed Troubleshooting

### **Common Zed Issues**
1. **Language Server Issues**: Restart language server from command palette
2. **AI Assistant Problems**: Check AI model configuration and API keys
3. **Performance Degradation**: Check for large files or excessive extensions
4. **Collaboration Issues**: Verify network connectivity and authentication

### **Zed-Specific Debugging**
```markdown
# Debugging approaches in Zed
1. **Built-in Diagnostics**
   - Use command palette: "Developer: Show Language Server Logs"
   - Check AI assistant status and connectivity
   - Monitor terminal output for errors

2. **Performance Analysis**
   - Use "Developer: Profile" for performance issues
   - Check memory usage in activity monitor
   - Identify bottlenecks in large projects

3. **AI Assistant Troubleshooting**
   - Verify API key configuration
   - Check model availability and quotas
   - Test with simple queries first
```

## 🎯 Zed AI Integration Best Practices

### **Native AI Assistant Usage**
```markdown
# Effective AI assistant usage in Zed
1. **Context-Rich Queries**
   - "Help me implement [specific feature] using [project patterns]"
   - "Review this code for [specific concerns]"
   - "Suggest optimizations for [performance/maintainability]"

2. **Collaborative AI**
   - Share complex AI conversations with team
   - Use AI for design discussions and decisions
   - Leverage AI for code review and feedback

3. **Iterative Development**
   - Start with AI suggestions and refine
   - Use AI for exploration and alternatives
   - Validate AI suggestions with team and testing
```

### **Performance-Optimized AI Work**
```typescript
// Zed's performance advantages for AI development
class ZedAIWorkflow {
    // Lightning-fast file switching allows rapid context changes
    async switchContext(filePath: string) {
        // Instant file opening - no delay
        await this.openFile(filePath);
        // AI immediately understands new context
        await this.updateAIContext();
    }

    // Multi-cursor enables AI-suggested bulk changes
    async applyAISuggestions(suggestions: CodeSuggestion[]) {
        // Apply multiple suggestions simultaneously
        // Zed's performance handles large-scale changes smoothly
    }
}
```

### **Team Collaboration with AI**
```markdown
# Collaborative AI development in Zed
1. **Shared AI Sessions**
   - Invite team members to AI conversations
   - Discuss architectural decisions with AI assistance
   - Collaborate on complex problem-solving

2. **Live Coding with AI**
   - Use live collaboration while working with AI
   - Share AI suggestions in real-time
   - Collective refinement of AI-generated code

3. **Knowledge Sharing**
   - Document successful AI patterns
   - Share effective AI prompts and techniques
   - Build team AI usage best practices
```

---

**Zed Philosophy**: Combine Zed's exceptional performance and built-in AI capabilities to create the fastest, most responsive AI-assisted development experience. Every interaction should be instant, every AI suggestion contextual, and every collaboration seamless.