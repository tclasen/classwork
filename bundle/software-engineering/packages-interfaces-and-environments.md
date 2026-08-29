---
type: Software Engineering Concept
title: Packages, interfaces, and environments
description: Components that interact through contracts within a build or runtime environment.
tags: [software-engineering, packages, interfaces, environments, compatibility]
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
---

# Components and contracts

A **package** is a distributable software component with identity and metadata.
An **interface** is the set of operations, data shapes, and behavioral
assumptions a component exposes or consumes. An **environment** is the
platform, runtime, configuration, tools, and external services in which a
component is built or run.

Compatibility means that the actual component and environment satisfy the
consumer's interface and behavioral assumptions. A version constraint describes
which package versions are acceptable; it does not prove that every matching
version works. A resolver selects a graph satisfying all constraints, and a
lock records one selected graph for repeatability.[^python-dependency-specifiers]

The general dependency structure is defined in [logic, graphs, and
dependencies](../foundations/logic-graphs-and-dependencies.md) and [systems,
processes, and boundaries](../foundations/systems-processes-and-boundaries.md).

[^python-dependency-specifiers]: Python Packaging Authority, [Dependency specifiers](https://packaging.python.org/en/latest/specifications/dependency-specifiers/).
