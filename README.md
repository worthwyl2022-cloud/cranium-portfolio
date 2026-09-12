# WorthWyl Portfolio Showcase

A private diligence surface for acquisition-oriented case studies, architecture records, and verified project evidence.

## Evidence boundary

This repository is a presentation and review surface. It does not issue Cranium authority, modify canonical state, or substitute for source repositories. Every claim should identify its source repository, commit or version, verification command, result, and residual limitation.

## Architecture thesis

Read [`CRANIUM_ARCHITECTURE_THESIS.md`](./CRANIUM_ARCHITECTURE_THESIS.md) for the acquisition-facing explanation of Cranium as a cognitive authority substrate: what the system creates, which AI-stack gap it addresses, what is implemented, and where the remaining boundaries are.

## Review standard

A project may be described as deployable only when its source repository contains a reproducible install/build/test path, explicit security and evidence boundaries, and a CI result or locally reproducible verification record. Illustrative screenshots and narrative claims are not execution evidence.

## Portfolio structure

- `case-studies/` — evidence-backed project narratives.
- `architecture/` — system boundaries and decision records.
- `verification/` — dated verification summaries with source commits.

The canonical Cranium authority boundary remains in [`cranium-kernel`](https://github.com/worthwyl2022-cloud/cranium-kernel); this repository must not become an alternate implementation.
