---
type: Foundational Concept
title: Causation and dependency
description: Distinguishing cause, sequence, enablement, constraint, and prerequisite.
tags: [foundations, causation, dependency, prerequisites, change]
subject:
  - ontology: prov-o
    class: http://www.w3.org/ns/prov#Activity
    label: Activity
  - ontology: prov-o
    class: http://www.w3.org/ns/prov#Entity
    label: Entity
status: stable
generated: { by: "codex/gpt-5.6", at: "2026-08-29T00:00:00-07:00" }
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
about process, not automatically proof of causal sufficiency.

These distinctions prevent a prerequisite graph from treating every useful
relationship as a necessary cause. They support [claims, evidence, and inference](claims-evidence-and-inference.md), [systems, processes, and boundaries](systems-processes-and-boundaries.md), and [software dependency and compatibility](../software-engineering/software-dependency-and-compatibility.md).

They also qualify interpretation of rewards: in the
[reinforcement-learning feedback loop](../artificial-intelligence/reinforcement-learning-feedback-loop.md),
an action followed by a reward is an observed transition, not by itself proof
that the action caused the outcome.

[^w3c-prov-dm]: W3C, [PROV-DM: The PROV Data Model](https://www.w3.org/TR/prov-dm/).
