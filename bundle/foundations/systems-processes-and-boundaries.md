---
type: Foundational Concept
title: Systems, processes, and boundaries
description: Organized parts, interactions, inputs, outputs, and scope.
tags: [foundations, systems, processes, boundaries, context]
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

# Organized interaction

A **system** is a set of parts and relationships considered together for a
purpose. A **process** is an ordered or condition-dependent pattern of
activities that transforms inputs, produces outputs, or changes a state. A
**boundary** states what is included in the system description and what is
treated as its environment. A **context** supplies the conditions needed to
interpret behavior, such as time, location, assumptions, stakeholders, and
constraints.

A system description is incomplete unless it identifies its purpose and scope.
The same object can be an internal component in one model and an external
dependency in another. Inputs and outputs are [entities, activities, and agents](entities-activities-and-agents.md),[^w3c-prov-dm] and their meanings depend on
[semantics and models](semantics-and-models.md).

This foundation is used by [software dependency and compatibility](../software-engineering/software-dependency-and-compatibility.md)
and [assurance cases](../assurance/assurance-case.md).

[^w3c-prov-dm]: W3C, [PROV-DM: The PROV Data Model](https://www.w3.org/TR/prov-dm/).
