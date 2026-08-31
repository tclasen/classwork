---
type: Domain-Driven Design Pattern
title: Context map
description: A documented view of relationships and integration arrangements between bounded contexts.
tags: [software-engineering, domain-driven-design, context-map, strategic-design]
subject:
  - ontology: prov-o
    class: "http://www.w3.org/ns/prov#Entity"
    label: Entity
status: stable
generated: { by: "codex/gpt-5.6", at: "2026-08-31T18:00:00-07:00" }
sources: [{ id: domain-language-reference, resource: "https://www.domainlanguage.com/wp-content/uploads/2016/05/DDD_Reference_2015-03.pdf", title: "Domain-Driven Design Reference", author: "eric-evans/domain-language" }]
---

# Map context relationships

In [Domain-driven design](domain-driven-design.md), a context map records how [bounded contexts](bounded-context.md) relate, including ownership, data or messages crossing a boundary, and translation or coordination. Common arrangements include a [shared kernel](shared-kernel.md), [published language](published-language.md), [conformist integration](conformist-integration.md), and [anti-corruption layer](anti-corruption-layer.md).[^domain-language-reference]

[^domain-language-reference]: Eric Evans, [Domain-Driven Design Reference](https://www.domainlanguage.com/wp-content/uploads/2016/05/DDD_Reference_2015-03.pdf).
