---
type: Science Concept
title: Evidence and scientific claims
description: How observations, methods, uncertainty, and replication support scientific conclusions.
tags: [science, evidence, inference, reproducibility, uncertainty]
subject:
  - ontology: eco
    class: http://purl.obolibrary.org/obo/ECO_0000000
    label: Evidence
  - ontology: prov-o
    class: http://www.w3.org/ns/prov#Entity
    label: Entity
  - ontology: prov-o
    class: http://www.w3.org/ns/prov#Activity
    label: Activity
status: stable
generated: { by: "codex/gpt-5.6", at: "2026-08-29T00:00:00-07:00" }
sources:
  - id: nas-reproducibility
    resource: https://doi.org/10.17226/25303
    title: Reproducibility and Replicability in Science
    author: "national-academies/2019"
    last_modified: 2019-05-07
---

# Claim, evidence, and inference

A scientific claim is a proposition about the world that is supported by
observations, measurements, models, or experiments. **Evidence** is the
recorded basis relevant to that claim; **inference** is the reasoning that
connects evidence to a conclusion. A claim is not made certain merely by
having data: measurement validity, study design, analysis choices, alternative
explanations, and uncertainty determine how strongly the evidence supports it.

```mermaid
flowchart LR
    Q[Question] --> D[Design and measurement]
    D --> E[Evidence and data]
    E --> M[Model and analysis]
    M --> C[Claim with uncertainty]
    C --> R[Replication or new evidence]
    R -->|supports, qualifies, or challenges| C
```

# Rigor and reproducibility

A defensible record states the question, operational definitions, population
or system studied, methods, exclusions, analysis, and limitations. It keeps a
clear distinction between an observed result and an interpretation built on
that result. Reported precision should not exceed the measurement and design
supporting it.

The National Academies distinguishes **reproducibility** (obtaining
consistent computational results using the same data, computational steps,
methods, and conditions) from **replicability** (obtaining consistent results
across studies addressing the same scientific question with new data or an
appropriate new approach).[^nas-reproducibility] Neither is a mechanical
guarantee of truth: failures can reveal errors, hidden conditions, or a claim
whose scope was overstated, while successful repetition increases but does
not eliminate uncertainty.

# Evaluating a claim

Ask what would count as evidence against the claim, whether the methods could
have introduced systematic bias, whether uncertainty and missing data are
visible, and whether independent evidence converges. Separate exploratory
patterns from confirmatory tests, avoid treating statistical significance as
the size or importance of an effect, and update the claim when better evidence
arrives. Provenance records such as [product provenance](../supply-chains/product-provenance.md)
can be inputs to science, but a chain of custody alone does not establish a
scientific conclusion.

The claim–argument–evidence structure of an [assurance case](../assurance/assurance-case.md)
provides a practical way to expose the reasoning, assumptions, and limits
between a system claim and the evidence offered for it.

[^nas-reproducibility]: National Academies, [Reproducibility and Replicability in Science](https://doi.org/10.17226/25303).
