---
type: Domain-Driven Design Pattern
title: Shared kernel
description: A deliberately shared subset of a model or codebase maintained jointly by bounded contexts.
tags: [software-engineering, domain-driven-design, shared-kernel, strategic-design]
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

# Share intentionally

In [Domain-driven design](domain-driven-design.md), a shared kernel is a small, explicitly agreed subset of a model, vocabulary, or code shared by two [bounded contexts](bounded-context.md). The teams jointly own its evolution; the benefit of avoiding translation is traded against coordination and coupling costs. It is one relationship recorded in a [context map](context-map.md).[^domain-language-reference]

[^domain-language-reference]: Eric Evans, [Domain-Driven Design Reference](https://www.domainlanguage.com/wp-content/uploads/2016/05/DDD_Reference_2015-03.pdf).
