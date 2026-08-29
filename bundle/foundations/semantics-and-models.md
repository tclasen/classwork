---
type: Foundational Concept
title: Semantics and models
description: Shared meanings and simplified structures used to represent a subject.
tags: [foundations, semantics, models, vocabulary, interpretation]
subject:
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

# Meaning in context

**Semantics** is the meaning assigned to a symbol, term, record, or behavior
in a stated context. A **vocabulary** is a set of terms with agreed meanings.
An **ontology** is a formally represented vocabulary whose concepts and
relationships support shared interpretation. A **model** is a selective
representation of a subject used for a purpose; it includes assumptions and
omits details.

A model is not the thing it represents. Correct interpretation requires knowing
the scope, terms, units, relationships, assumptions, and intended use. Two
records can look alike while having different meanings, or differ in form while
expressing the same meaning. [Information, data, and records](information-data-and-records.md)
provides the representation layer, while [claims, evidence, and inference](claims-evidence-and-inference.md)
depends on interpreting representations consistently.

The repository's ontology catalog and vendored artifacts are models used to
classify concepts; they do not replace explanations of the concepts themselves.

[^w3c-prov-dm]: W3C, [PROV-DM: The PROV Data Model](https://www.w3.org/TR/prov-dm/).
