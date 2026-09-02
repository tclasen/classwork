---
type: Foundational Concept
title: Causation and dependency
description: Distinguishing cause, sequence, enablement, constraint, and prerequisite.
tags: [foundations, causation, dependency, prerequisites, change]
subject: []
subject_review:
  status: pending
  reason: no-suitable-authoritative-class
  reviewed:
    by: "codex/gpt-5.6"
    at: "2026-09-02T13:51:36-07:00"
  checked_catalog_keys:
    - cbv-2.0.0
    - ctdlasn-20260626-turtle
    - eco
    - epcis-2.0.1
    - iao-2026-03-30
    - mls-1.0
    - obi-2026-07-27
    - odrl-2.2
    - ontomathpro-v2-acb3eef1
    - org-0.8
    - prov-o
    - sosa-2017-10-19
    - spdx-3.0.1
    - swo-2023-03-05
status: stable
generated: { by: "codex/gpt-5.6", at: "2026-09-02T13:51:36-07:00" }
sources:
  - id: w3c-prov-dm
    resource: https://www.w3.org/TR/prov-dm/
    title: W3C PROV-DM Provenance Data Model
    author: "w3c/PROV-DM"
    last_modified: 2013-04-30
---

# Different kinds of dependence

**Sequence** means one event is ordered before another. **Causation** means a
condition or activity contributes to an outcome under a stated model; changing
that condition would be expected to change the outcome in the relevant
context. Sequence alone does not establish causation.

**Enablement** makes an outcome possible without being sufficient to produce
it. A **constraint** limits which outcomes or actions are possible. A
**prerequisite** is a condition that must be satisfied for a specified task or
competency, while a **dependency** is a broader requirement relationship. A
record of derivation describes how information was produced; it is evidence
about process, not automatically proof of causal sufficiency.[^w3c-prov-dm]

These distinctions prevent a prerequisite graph from treating every useful
relationship as a necessary cause. They support [claims, evidence, and inference](claims-evidence-and-inference.md), [systems, processes, and boundaries](systems-processes-and-boundaries.md), and [software dependency and compatibility](../software-engineering/software-dependency-and-compatibility.md).

They also qualify interpretation of rewards: in the
[reinforcement-learning feedback loop](../artificial-intelligence/reinforcement-learning-feedback-loop.md),
an action followed by a reward is an observed transition, not by itself proof
that the action caused the outcome.

[^w3c-prov-dm]: W3C, [PROV-DM: The PROV Data Model](https://www.w3.org/TR/prov-dm/).
