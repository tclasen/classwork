---
type: Domain-Driven Design Pattern
title: Domain services
description: Stateless domain operations that express meaningful behavior not naturally owned by one entity or value object.
tags: [software-engineering, domain-driven-design, domain-services, tactical-design]
subject:
  - ontology: prov-o
    class: "http://www.w3.org/ns/prov#Activity"
    label: Activity
status: stable
generated: { by: "codex/gpt-5.6", at: "2026-08-31T18:00:00-07:00" }
sources: [{ id: domain-language-reference, resource: "https://www.domainlanguage.com/wp-content/uploads/2016/05/DDD_Reference_2015-03.pdf", title: "Domain-Driven Design Reference", author: "eric-evans/domain-language" }]
---

# Place cross-object behavior

A domain service expresses a meaningful domain operation that does not naturally belong to one [entity](entities.md) or [value object](value-objects.md). It should remain focused on domain meaning rather than becoming a general-purpose utility or a home for infrastructure concerns.[^domain-language-reference]

[^domain-language-reference]: Eric Evans, [Domain-Driven Design Reference](https://www.domainlanguage.com/wp-content/uploads/2016/05/DDD_Reference_2015-03.pdf).
