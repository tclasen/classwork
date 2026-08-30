---
type: Foundational Concept
title: Time, identity, and relationships
description: How descriptions locate, distinguish, and connect entities across change.
tags: [foundations, time, identity, identifiers, relationships]
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
  - id: w3c-prov-dm
    resource: https://www.w3.org/TR/prov-dm/
    title: W3C PROV-DM Provenance Data Model
    author: "w3c/PROV-DM"
    last_modified: 2013-04-30
---

# Locating and distinguishing

**Time** orders or locates events and states. A timestamp is a representation
of a time point or interval in a chosen clock and context; it is not meaningful
without knowing the time scale, precision, and possible clock error.

An **identifier** is a representation used to distinguish or refer to a thing
within a stated scope. Identity is the claim that references at different
times or in different records denote the same subject. Identifiers can be
duplicated, changed, scoped differently, or assigned to representations rather
than the underlying thing. A **relationship** is a stated connection between
identified entities, activities, or agents, such as used, generated, owned,
caused, depends on, or supports.[^w3c-prov-dm]

Reliable histories therefore need identifiers, timestamps, scope, and an
explicit account of change. These distinctions support [information, data, and records](information-data-and-records.md) and [product provenance](../supply-chains/product-provenance.md).

[^w3c-prov-dm]: W3C, [PROV-DM: The PROV Data Model](https://www.w3.org/TR/prov-dm/).
