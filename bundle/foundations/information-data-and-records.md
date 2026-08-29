---
type: Foundational Concept
title: Information, data, and records
description: Representations that can be stored, interpreted, transformed, and checked.
tags: [foundations, information, data, records]
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

# Representation and interpretation

**Information** is meaningful content that can reduce uncertainty or guide
understanding. **Data** is information represented in a form suitable for
communication, storage, or processing. A **record** is a retained
representation intended to be consulted later. A record can preserve data
without guaranteeing that its interpretation, accuracy, or completeness is
correct.

A representation has a form, a meaning in context, and a producer or
transformation history. The same underlying subject may be represented by a
number, text, image, event, or structured record. A transformation can preserve
meaning, lose detail, or introduce error, so [claims, evidence, and inference](claims-evidence-and-inference.md)
must distinguish what a record contains from what a reader concludes.

Records are [entities, activities, and agents](entities-activities-and-agents.md)
when modeled for provenance. [Semantics and models](semantics-and-models.md)
explains how a representation acquires shared meaning.

[^w3c-prov-dm]: W3C, [PROV-DM: The PROV Data Model](https://www.w3.org/TR/prov-dm/).
