# Cranium public review package

This package is the recommended ten-minute review path for the public Cranium portfolio. It is deliberately small and deterministic. It demonstrates a bounded authority transition, rejection of stale input, and production of a machine-readable receipt. It does **not** claim independent security certification, production performance, or access to the private canonical control plane.

## Requirements

- Bash 4+
- Core utilities: `awk`, `grep`, `sha256sum`, and `date`
- No provider key, network service, package install, or proprietary repository is required.

## Run it

From the repository root:

```bash
bash public-review/run-proof.sh
```

Expected final line:

```text
PASS: bounded transition, stale-input rejection, and receipt integrity verified
```

The script writes a temporary receipt under `/tmp/cranium-public-review/`, verifies its SHA-256 digest, then cleans up. The proof is intentionally not a substitute for the private evidence package.

## What the proof shows

1. A transition is accepted only when its authority and version match the declared policy.
2. A stale version is rejected before a receipt is emitted.
3. The accepted transition produces a deterministic receipt with a digest.
4. The receipt digest is rechecked after creation.

## Review boundaries

The proof is a public architectural demonstration. It does not prove that the private Cranium Core, Synapse, Kernel, provider integrations, or recovery implementation satisfy any particular security or performance level. Those claims require the controlled diligence package, source commit manifest, test fixtures, and independent review where applicable.

## Ownership and licensing

The Cranium software and related technical assets are intended to be licensed through **WorthWyl LLC**. The Cranium Ecosystem is presented through **Convertible Cranium Engineering**, the software and engineering division of WorthWyl Media. WorthWyl Media also covers books, publishing, media, and KDP activity. WorthWyl Foundation is a separate nonprofit branch. See `../RIGHTS-AND-LICENSING.md` and the repository license for the applicable boundary.
