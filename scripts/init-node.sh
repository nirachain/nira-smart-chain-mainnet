#!/usr/bin/env bash
set -euo pipefail
GETH="${1:-}"
GENESIS="${2:-}"
DATADIR="${3:-}"
if [[ -z "$GETH" || -z "$GENESIS" || -z "$DATADIR" ]]; then
  echo "Usage: $0 <nira-geth-binary> <finalized-genesis.json> <datadir>" >&2
  exit 2
fi
[[ -x "$GETH" ]] || { echo "Client binary missing/not executable: $GETH" >&2; exit 1; }
[[ -f "$GENESIS" ]] || { echo "Finalized genesis not found: $GENESIS" >&2; exit 1; }
if grep -q 'CHANGE_ME\|PENDING_PROTOCOL_APPROVAL' "$GENESIS"; then
  echo "Genesis contains unresolved placeholders; refusing initialization." >&2
  exit 1
fi
mkdir -p "$DATADIR"
"$GETH" --datadir "$DATADIR" init "$GENESIS"
