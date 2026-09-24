# Convertible Cranium Infrastructure Architecture v1

## Purpose

Convertible Cranium is organized as an infrastructure ecosystem, not a collection of unrelated applications. The repositories are separate implementation and evidence boundaries within one governed system.

The architectural invariant is:

> Cognition may come from anywhere. Authority comes only through Cranium.

## Authority hierarchy

1. **Cranium Kernel** is the canonical authority boundary.
2. **Protocol and contract surfaces** define interoperable submission, evidence, identity, receipt, state, recovery, and conformance rules.
3. **Supporting engines and services** implement bounded capabilities without creating competing authority semantics.
4. **Products, appliances, demonstrations, and operator surfaces** consume the infrastructure through those boundaries.
5. **Documentation and diligence surfaces** expose architecture and evidence without becoming alternate sources of truth.

## Dual-engine boundary

**Synapse** is the cognition/evidence plane. It may produce bounded cognition, attestation, evidence, risk signals, and escalation context.

**Kernel/Core** is the authority plane. It validates evidence, evaluates policy and constitutional constraints, protects canonical state, produces authoritative receipts, enforces replay and recovery boundaries, and controls eligible side effects.

No supporting repository may silently redefine these semantics.

## Infrastructure protocols

The ecosystem is treated as infrastructure only where these contracts are explicit and testable:

- authority acquisition and denial
- evidence binding and provenance
- identity and attestation
- canonical state transitions
- receipt generation and verification
- replay protection
- atomic recovery
- constitutional policy enforcement
- lifecycle/conformance vectors
- provider/integration boundaries
- release and evidence reproducibility
- adoption alignment for supporting repositories

A repository is not authoritative merely because it contains code that looks authoritative. Authority is assigned by the canonical Kernel contract and verified by conformance.

## Repository roles

Every repository belongs to one primary architectural role: **authority, protocol, engine, state/evidence, integration, product, appliance, diligence, presentation, or archive**. A repository may implement multiple capabilities, but its authority status must remain explicit.

## Evidence rule

Every material technical claim should be traceable to a repository, commit or release, exact verification command, observed result, and residual limitation. Internal testing is evidence of the tested property under the tested conditions. It is not represented as independent certification.

## Public boundary

The public GitHub surface should explain the architecture, demonstrate bounded behavior, expose reproducible proof where safe, and provide a controlled path into deeper diligence. Proprietary implementation and sensitive operational material remain behind deliberate access boundaries.

## Consolidation rule

Repository count is not an architectural quality metric. Repositories are consolidated when separation creates duplicate authority, duplicate semantics, or unnecessary operational burden. Repositories remain separate when separation preserves trust boundaries, independent release lifecycles, security boundaries, or buyer/diligence isolation.

The target state is **one coherent infrastructure ecosystem with one authority source and many explicitly bounded implementation surfaces**, not one giant repository.

## Definition of architectural integrity

A reviewer should be able to trace a complete path from generated cognition to governed action:

`cognition -> evidence -> identity/provenance -> policy -> authority decision -> canonical state transition -> receipt -> audit/recovery`

If any transition cannot be identified, tested, or attributed, it is an evidence gap to be resolved rather than hidden by presentation.
