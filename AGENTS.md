# AGENTS.md — railway-services/alpaca-mcp-server

Primary instructions live at "/home/judah/projects/SwingGPT-ops/AGENTS.md". Follow those first.

## Scope
- Railway service: alpaca-mcp-server
- Hub path: /home/judah/projects/SwingGPT-ops/railway-services/alpaca-mcp-server
- Service inventory + deploy notes: /home/judah/projects/SwingGPT-ops/docs/README.md

## Workflow
- Journal every substantive change from the hub (see AGENTS in SwingGPT-ops).
- Commit + push in this repo first, then update the submodule pointer in SwingGPT-ops and push the hub.
- Keep README, railway.json, and config files aligned with deployed behavior.

## Secrets + Railway
- Secrets live in the hub vault: /home/judah/projects/SwingGPT-ops/secrets/ops.env (gitignored).
- Sync Railway → local vault: `python3 /home/judah/projects/SwingGPT-ops/scripts/railway_sync_secrets.py`.
- Apply local vault → Railway: `python3 /home/judah/projects/SwingGPT-ops/scripts/railway_apply_secrets.py --service "alpaca-mcp-server" --skip-deploys`.
- Audit quickly: `railway variables --service "alpaca-mcp-server" --environment production --json`.

## CLI accelerators
- `railway status`, `railway variables`, `railway logs`, `railway up`.
- `gh repo view`, `gh pr list`, `gh run list`.
