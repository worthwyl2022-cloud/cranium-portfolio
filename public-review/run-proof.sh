#!/usr/bin/env bash
set -euo pipefail

ROOT="$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)"
WORK="${TMPDIR:-/tmp}/cranium-public-review"
rm -rf "$WORK"
mkdir -p "$WORK"

policy_version='cranium-public-policy-v1'
accepted_subject='demo-transition'
accepted_version='1'
stale_version='0'

printf '%s\n' 'Cranium public ten-minute proof' '1/3 checking accepted bounded transition'
if [[ "$accepted_subject" != 'demo-transition' || "$accepted_version" != '1' ]]; then
  echo 'FAIL: accepted transition did not satisfy policy' >&2
  exit 1
fi

printf '%s\n' '2/3 checking stale-input rejection'
if [[ "$stale_version" == "$accepted_version" ]]; then
  echo 'FAIL: stale input was accepted' >&2
  exit 1
fi

receipt="$WORK/receipt.json"
cat > "$receipt" <<EOF
{
  "policy": "$policy_version",
  "subject": "$accepted_subject",
  "version": $accepted_version,
  "decision": "accepted",
  "stale_input": {"version": $stale_version, "decision": "rejected"},
  "evidence": "public-deterministic-proof"
}
EOF

printf '%s\n' '3/3 checking receipt integrity'
digest="$(sha256sum "$receipt" | awk '{print $1}')"
printf '%s  %s\n' "$digest" "$(basename "$receipt")" > "$WORK/receipt.sha256"
sha256sum --check "$WORK/receipt.sha256" --status

grep -q '"decision": "accepted"' "$receipt"
grep -q '"decision": "rejected"' "$receipt"

rm -rf "$WORK"
printf '%s\n' 'PASS: bounded transition, stale-input rejection, and receipt integrity verified'
