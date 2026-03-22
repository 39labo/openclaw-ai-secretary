#!/bin/bash
set -e

MAIN_AGENT_DIR="/home/node/.openclaw/agents/main/agent"
SECRETARY_AGENT_DIR="/home/node/.openclaw/agents/secretary/agent"

mkdir -p "$MAIN_AGENT_DIR"
mkdir -p "$SECRETARY_AGENT_DIR"

cat > "$MAIN_AGENT_DIR/auth-profiles.json" <<EOF
{
  "openrouter": {
    "apiKey": "${OPENROUTER_API_KEY}"
  }
}
EOF

cp "$MAIN_AGENT_DIR/auth-profiles.json" "$SECRETARY_AGENT_DIR/auth-profiles.json"

chmod 600 "$MAIN_AGENT_DIR/auth-profiles.json" "$SECRETARY_AGENT_DIR/auth-profiles.json"