---
type: Software Engineering Concept
title: Version resolution and locks
description: Selecting a concrete dependency graph from constraints and recording it for repeatable use.
tags: [software-engineering, versions, resolution, locks, reproducibility]
subject:
  - ontology: spdx-3.0.1
    class: https://spdx.org/rdf/3.0.1/terms/Software/Package
    label: Package
  - ontology: prov-o
    class: http://www.w3.org/ns/prov#Entity
    label: Entity
status: stable
generated: { by: "codex/gpt-5.6", at: "2026-08-29T00:00:00-07:00" }
sources:
  - id: python-dependency-specifiers
    resource: https://packaging.python.org/en/latest/specifications/dependency-specifiers/
    title: Python Packaging Dependency Specifiers
    author: "pypa/packaging-specifications"
    last_modified: 2024-06-01
  - id: semver
    resource: https://semver.org/spec/v2.0.0.html
    title: Semantic Versioning 2.0.0
    author: "semver/2.0.0"
    last_modified: 2013-06-20
---

# From ranges to a concrete graph

A version constraint describes a set of acceptable versions. A **resolver**
selects one version for each required package while satisfying direct and
transitive constraints and environment conditions. Resolution can fail when
constraints conflict or can produce different valid choices at different times.

A **lock** records one resolved graph, often with artifact versions and hashes,
so another build can reproduce the selected inputs. A lock improves repeatability
but does not prove that a package is safe, compatible, or available forever.
Semantic Versioning communicates intended compatibility through version numbers,
but concrete combinations still need testing.[^semver]

[Packages, interfaces, and environments](packages-interfaces-and-environments.md)
defines the components and assumptions; [software dependency and compatibility](software-dependency-and-compatibility.md)
applies them to maintenance.

[^python-dependency-specifiers]: Python Packaging Authority, [Dependency specifiers](https://packaging.python.org/en/latest/specifications/dependency-specifiers/).
[^semver]: [Semantic Versioning 2.0.0](https://semver.org/spec/v2.0.0.html).
