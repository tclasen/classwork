---
type: Domain-Driven Design Pattern
title: Anti-corruption layer
description: A translation boundary that protects one domain model from an external model's concepts and constraints.
tags: [software-engineering, domain-driven-design, anti-corruption-layer, integration]
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
sources: [{ id: domain-language-reference, resource: "https://www.domainlanguage.com/wp-content/uploads/2016/05/DDD_Reference_2015-03.pdf", title: "Domain-Driven Design Reference", author: "eric-evans/domain-language" }]
---

# Protect a model

An anti-corruption layer translates between an external [bounded context](bounded-context.md) and a local model so foreign concepts, protocols, and assumptions do not leak inward. In [Domain-driven design](domain-driven-design.md), it can be implemented with adapters, facades, translators, or a combination. Its ownership and direction should be explicit in a [context map](context-map.md).[^domain-language-reference]

[^domain-language-reference]: Eric Evans, [Domain-Driven Design Reference](https://www.domainlanguage.com/wp-content/uploads/2016/05/DDD_Reference_2015-03.pdf).
