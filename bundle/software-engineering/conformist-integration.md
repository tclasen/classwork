---
type: Domain-Driven Design Pattern
title: Conformist integration
description: An integration arrangement in which a downstream context adopts an upstream model rather than translating it.
tags: [software-engineering, domain-driven-design, conformist, integration]
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

# Adopt an upstream model

In [Domain-driven design](domain-driven-design.md), conformist integration means a downstream [bounded context](bounded-context.md) conforms to an upstream model or protocol instead of imposing its own translation. This can reduce integration cost when the upstream model is adequate, but it leaves the downstream context dependent on upstream choices. It is recorded in a [context map](context-map.md).[^domain-language-reference]

[^domain-language-reference]: Eric Evans, [Domain-Driven Design Reference](https://www.domainlanguage.com/wp-content/uploads/2016/05/DDD_Reference_2015-03.pdf).
