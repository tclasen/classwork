---
type: Foundational Concept
title: Entities, activities, and agents
description: The basic things, happenings, and actors used to describe provenance and change.
tags: [foundations, entity, activity, agent, provenance]
subject:
  - ontology: prov-o
    class: http://www.w3.org/ns/prov#Entity
    label: Entity
  - ontology: prov-o
    class: http://www.w3.org/ns/prov#Activity
    label: Activity
  - ontology: prov-o
    class: http://www.w3.org/ns/prov#Agent
    label: Agent
status: stable
generated: { by: "codex/gpt-5.6", at: "2026-08-29T00:00:00-07:00" }
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
