---
type: Software Engineering Practice
title: Requirements engineering and acceptance
description: Discovering, specifying, validating, tracing, and managing software needs and acceptance evidence.
tags: [software-engineering, requirements, acceptance, validation, stakeholders]
subject:
  - ontology: prov-o
    class: http://www.w3.org/ns/prov#Activity
    label: Activity
  - ontology: prov-o
    class: http://www.w3.org/ns/prov#Plan
    label: Plan
status: stable
generated: { by: "codex/gpt-5.6", at: "2026-08-29T00:00:00-07:00" }
sources:
  - id: iso-29148
    resource: https://www.iso.org/standard/72089.html
    title: ISO/IEC/IEEE 29148:2018, Requirements engineering
    author: "iso/iec/ieee-29148:2018"
---

# Start with the problem and intended use

Requirements engineering is the disciplined process of discovering,
analyzing, specifying, validating, communicating, and managing the needs and
constraints a software system must satisfy. ISO/IEC/IEEE 29148:2018 treats it
as a lifecycle activity rather than a one-time document-writing phase.[^iso-29148]
Begin with stakeholders, users, intended use, operating context, and desired
outcomes; then make assumptions, constraints, non-functional qualities, and
trade-offs visible.

A useful requirement is specific enough to be understood consistently,
feasible within its constraints, testable, and traceable to a need. Avoid
confusing a proposed implementation with the need it serves. Record
uncertainty instead of disguising guesses as commitments.

# Connect requirements to evidence

For each important requirement, define observable acceptance conditions before
implementation. The conditions may be examples, tests, measurements, or an
explicit review decision. Trace the relationship from stakeholder need to
requirement, design choice, implementation, and verification evidence. This
trace makes change impact and omissions easier to detect, and it connects
software work to [claims, evidence, and inference](../foundations/claims-evidence-and-inference.md)
and [requirements, risk, and review](../assurance/requirements-risk-and-review.md).

Requirements are hypotheses about value and behavior, not proof that a system
will work. Revisit them when evidence, users, constraints, or risks change.

```mermaid
flowchart LR
    N[Stakeholder need] --> R[Requirement]
    R --> A[Acceptance condition]
    R --> D[Design and implementation]
    D --> V[Verification evidence]
    V --> A
    V --> F[Feedback and change]
    F --> R
```

[^iso-29148]: ISO, [ISO/IEC/IEEE 29148:2018](https://www.iso.org/standard/72089.html).
