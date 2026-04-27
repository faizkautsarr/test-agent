# test-agent

A collection of utility skills for [Claude Code](https://claude.ai/code).

## Install

Run this in your project directory:

```bash
curl -fsSL https://raw.githubusercontent.com/faizkautsarr/test-agent/main/install.sh | bash
```

Or manually copy any skill file from `.claude/commands/` into your project's `.claude/commands/` folder.

## Skills

### `/count`

Returns the number of characters in a string.

```
/count "aaa"
→ 3

/count "hello world"
→ 11
```

## Structure

```
.claude/commands/     # Skill files (Claude Code slash commands)
skills/               # Skill source and documentation
.claude-plugin/       # Plugin and marketplace metadata
install.sh            # One-line installer
```

## Author

Faiz Kautsar — faiz.kautsar@hubexo.com
# test-agent
# test-agent
