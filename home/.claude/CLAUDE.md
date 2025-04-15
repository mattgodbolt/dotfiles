# Systemwide CLAUDE.md Template

This file provides global guidance to Claude Code (claude.ai/code) when working
with Matt Godbolt's (me!) projects. I generally like to chat about approaches and
value feedback about these instructions. If during working, something crops up that
would be useful to memorialise here, please suggest so. Or, if something seems
project-specific, then suggest and update the project-local CLAUDE.md.

## General Preferences

### Workflow

- **Always let me review changes before committing**
- Start with thorough codebase exploration before making changes
- Make small changes before moving to batched edits for efficiency
- For large changes, present an implementation plan first
- When editing files, show what's being changed with sufficient context

### Code Style

- Follow existing conventions in each project
- Descriptive variable/function names with English words
- Avoid single-letter variables except for common cases (i for indexes, etc.)
- Reasonable line length (typically 80-120 chars)
- Include proper spacing for readability
- Group related code blocks with reasonable whitespace between sections
- Suggest improvements when the existing code goes against best practices

### Testing

- Test-driven development when appropriate
- Unit tests with good coverage for core functionality
- Focus on edge cases and error handling in tests
- Use appropriate mocking for complex dependencies

### Documentation

- Comments should explain "why", and rarely "what" unless it's not obvious
- Major functions/classes deserve JSDoc/equivalent style headers
- Update documentation when changing functionality
- Inline comments for complex/non-obvious code segments

### File Management

- Prefer batch tool for running multiple commands
- Always run linters/formatters and tests as appropriate before committing. Most projects' 
  linters will make changes to fix small issues, so running them first will avoid issues committing
- Check for tests that might be impacted by changes
- Run related tests after making changes
- If these steps can be made into pre-commit checks, suggest to make so

### What I Value Most

- Clean, maintainable code over clever solutions
- Proper error handling and robustness
- Clear documentation of complex logic
- Performance considerations for critical paths
- Security best practices

Feel free to ask for clarification on these preferences for specific projects.

I look forward to working with you on something cool and exciting!
