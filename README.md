# test-agent

SDLC blueprint plugin for [Claude Code](https://claude.ai/code) — provides slash commands for **harvester**, **etl**, and **lm** teams.

## Commands

15 slash commands, all under the `/test-agent:` namespace.

### Harvester team (3)
```
/test-agent:harvester-preflight
/test-agent:harvester-implement
/test-agent:harvester-test
```

### ETL team (3)
```
/test-agent:etl-preflight
/test-agent:etl-implement
/test-agent:etl-test
```

### LM team (9 — has fe/be/qa roles)
```
/test-agent:lm-fe-preflight    /test-agent:lm-be-preflight    /test-agent:lm-qa-preflight
/test-agent:lm-fe-implement    /test-agent:lm-be-implement    /test-agent:lm-qa-implement
/test-agent:lm-fe-test         /test-agent:lm-be-test         /test-agent:lm-qa-test
```

## Install — production (from GitHub)

In any project, run these two commands inside Claude Code:

```
/plugin marketplace add faizkautsarr/test-agent
/plugin install test-agent@test-agent
```

That's it — all 15 commands become available.

## Install — local development (from a cloned repo)

If you're hacking on this plugin and want to test changes without pushing:

```
/plugin marketplace add /absolute/path/to/test-agent
/plugin install test-agent@test-agent
/reload-plugins
```

After editing any command file, re-run `/reload-plugins` to pick up changes.

## Usage

Invoke any command with optional arguments:

```
/test-agent:harvester-preflight "deploy v2"
/test-agent:lm-fe-implement "build login form"
/test-agent:etl-test
```

Each command's behavior is defined in its corresponding `.md` file under `teams/`.

## Repository structure

```
test-agent/
├── .claude-plugin/
│   ├── plugin.json          # registers all 15 commands
│   └── marketplace.json     # marketplace listing
├── README.md
└── teams/
    ├── harvester/           # 3 commands (no roles)
    ├── etl/                 # 3 commands (no roles)
    └── lm/                  # 9 commands across fe/be/qa roles
        ├── fe/
        ├── be/
        └── qa/
```

Folder layout is purely for organization — Claude Code reads commands from the explicit `commands` array in `plugin.json`, not from the folder structure.

## Updating the plugin

After pushing changes to GitHub, users can update with:

```
/plugin marketplace update test-agent
```

## Author

Faiz Kautsar — faiz.kautsar@hubexo.com
