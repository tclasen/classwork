---
type: Domain-Driven Design Pattern
title: Aggregate root
description: The identity-bearing entry point through which external code accesses and changes an aggregate.
tags: [software-engineering, domain-driven-design, aggregate-root, tactical-design]
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

# Enter an aggregate

An aggregate root is the designated [entity](entities.md) through which outside code references and changes an [aggregate](aggregate.md). In [Domain-driven design](domain-driven-design.md), it enforces the aggregate's invariants and controls access to internal objects, so callers do not bypass its consistency boundary.[^domain-language-reference]

[^domain-language-reference]: Eric Evans, [Domain-Driven Design Reference](https://www.domainlanguage.com/wp-content/uploads/2016/05/DDD_Reference_2015-03.pdf).
