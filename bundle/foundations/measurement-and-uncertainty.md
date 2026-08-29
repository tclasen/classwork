---
type: Foundational Concept
title: Measurement and uncertainty
description: Assigning observations values while accounting for limitations and variation.
tags: [foundations, measurement, observation, uncertainty]
subject:
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

# From observation to value

An **observation** is an interaction with a subject that produces information.
A **measurement** assigns a value, with a unit or scale when applicable, to a
property using a method or instrument. **Uncertainty** describes the limits of
what the result supports, including variation, resolution, missing data,
calibration limits, and model assumptions.

A measured value is not the property itself. A useful record states what was
measured, under which conditions, by which method, with what precision and
known limitations. Repeated measurements may vary without either one being a
mistake. Precision concerns spread or resolution; accuracy concerns closeness
to the intended quantity, and neither should be claimed without justification.

Measurement is an [activity that produces an entity](entities-activities-and-agents.md).
Its result becomes [evidence](claims-evidence-and-inference.md) only relative
to a question or claim.

[^nas-reproducibility]: National Academies, [Reproducibility and Replicability in Science](https://doi.org/10.17226/25303).
