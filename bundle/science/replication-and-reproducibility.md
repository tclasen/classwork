---
type: Science Concept
title: Replication and reproducibility
description: Distinguishing repeated computational work from new investigations of the same question.
tags: [science, replication, reproducibility, methods, evidence]
subject:
  - ontology: prov-o
    class: http://www.w3.org/ns/prov#Activity
    label: Activity
  - ontology: eco
    class: http://purl.obolibrary.org/obo/ECO_0000000
    label: Evidence
status: stable
generated: { by: "codex/gpt-5.6", at: "2026-08-29T00:00:00-07:00" }
sources:
  - id: nas-reproducibility
    resource: https://doi.org/10.17226/25303
    title: Reproducibility and Replicability in Science
    author: "national-academies/2019"
    last_modified: 2019-05-07
---

# Two kinds of repetition

**Reproducibility** is obtaining consistent computational results using the
same data, computational steps, methods, and conditions. **Replicability** is
obtaining consistent results across studies addressing the same question with
new data or an appropriately new approach.[^nas-reproducibility]

Repetition can expose coding errors, data problems, hidden conditions, design
limitations, or an overbroad claim. A successful repeat increases confidence
under its tested conditions but does not guarantee truth. A useful record keeps
the [information, data, and records](../foundations/information-data-and-records.md),
[provenance](../information-systems/information-provenance-and-trust.md),
method, environment, and [uncertainty](../foundations/measurement-and-uncertainty.md)
visible.

The distinction is applied in [evidence and scientific claims](evidence-and-scientific-claims.md)
and supported computationally by [packages, interfaces, and environments](../software-engineering/packages-interfaces-and-environments.md).

[^nas-reproducibility]: National Academies, [Reproducibility and Replicability in Science](https://doi.org/10.17226/25303).
