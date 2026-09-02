---
type: Foundational Concept
title: Entities, activities, and agents
description: The basic things, happenings, and actors used to describe provenance and change.
tags: [foundations, entity, activity, agent, provenance]
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

# Three basic kinds

An **entity** is something that can be identified and described, such as a
document, product, measurement, software package, or assertion. An **activity**
is something that happens over time and may use entities or produce new ones.
An **agent** is something that bears responsibility for, controls, or
participates in an activity; it may be a person, organization, device, or
software service. These are the core categories in the W3C provenance model.[^w3c-prov-dm]

The categories describe roles, not permanent substances. The same real-world
thing can be an entity in one description and an agent in another, while an
activity can create a new entity. Provenance records commonly connect them:
an agent performs an activity, the activity uses an input entity, and the
activity generates an output entity.

This vocabulary supports [information, data, and records](information-data-and-records.md),
[systems, processes, and boundaries](systems-processes-and-boundaries.md), and
[time, identity, and relationships](time-identity-and-relationships.md). It also
provides the foundation for distinguishing an [AI agent](../artificial-intelligence/agents.md)
from the [AI system](../artificial-intelligence/artificial-intelligence.md) and
the activities it performs.

[^w3c-prov-dm]: W3C, [PROV-DM: The PROV Data Model](https://www.w3.org/TR/prov-dm/).
