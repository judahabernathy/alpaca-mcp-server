# Codex Project Setup

This folder is checked into GitHub so Codex local, Codex app, SSH remote, and Codex cloud sessions have durable setup/action guidance for this standalone service repository.

## Source Of Truth

- GitHub: `https://github.com/judahabernathy/alpaca-mcp-server.git`
- codex-swing slug: `alpaca-mcp-server`
- Repo root: `/home/judah/projects/SwingGPT-ops/railway-services/alpaca-mcp-server`
- Hub parent: `/home/judah/projects/SwingGPT-ops`

## Setup Script

Use this as the default setup script:

```bash
python3 -m pip install -e '.[dev]'
```

Do not put Alpaca credentials, Railway tokens, account data, API keys, or local vault contents in cloud setup.

## Actions

Test suite:

```bash
python3 -m pytest -q
```

Package metadata check:

```bash
python3 -m pip install -e '.[dev]'
python3 -m pytest -q
```

Railway status, local credentials required:

```bash
railway status
railway variables --service "alpaca-mcp-server" --environment production --json
```

Git hygiene:

```bash
git diff --check
git status --short --branch
```

## Boundaries

- Secrets live in the hub vault at `/home/judah/projects/SwingGPT-ops/secrets/ops.env`.
- Commit and push this standalone repo before updating the SwingGPT-ops submodule pointer.
- Keep `README.md`, `railway.json`, and config files aligned with deployed behavior.
