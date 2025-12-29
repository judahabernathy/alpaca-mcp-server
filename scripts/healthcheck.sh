#!/usr/bin/env bash
set -euo pipefail

if [[ -n "${HEALTH_URL:-}" ]]; then
  url="$HEALTH_URL"
else
  base="${BASE_URL:-http://localhost:${PORT:-8000}}"
  path="${HEALTH_PATH:-/healthz}"
  url="${base%/}${path}"
fi

curl -fsS "$url" >/dev/null
echo "ok: $url"
