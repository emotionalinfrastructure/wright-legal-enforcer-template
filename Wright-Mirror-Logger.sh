#!/usr/bin/env bash
ROOT="$(pwd)"
mkdir -p logs
ts=$(date -u +"%Y-%m-%dT%H:%M:%SZ")
fname="logs/$ts.json"
jq -n --arg t "$ts" --arg p "$PROMPT" --arg r "$RESPONSE"   '{timestamp:$t, prompt:$p, response:$r}' > "$fname"
sha=$(sha256sum "$fname" | cut -d' ' -f1)
echo "$ts  $sha" >> ledger.sha256
git add "$fname" ledger.sha256
git commit -m "log: $ts  $sha"
git push
