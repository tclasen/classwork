---
type: Domain-Driven Design Pattern
title: Shared kernel
description: A deliberately shared subset of a model or codebase maintained jointly by bounded contexts.
tags: [software-engineering, domain-driven-design, shared-kernel, strategic-design]
subject:
  - ontology: prov-o
    class: "http://www.w3.org/ns/prov#Entity"
    label: Entity
status: stable
generated: { by: "codex/gpt-5.6", at: "2026-08-31T18:00:00-07:00" }
sources: [{ id: domain-language-reference, resource: "https://www.domainlanguage.com/wp-content/uploads/2016/05/DDD_Reference_2015-03.pdf", title: "Domain-Driven Design Reference", author: "eric-evans/domain-language" }]
---

# Share intentionally

In [Domain-driven design](domain-driven-design.md), a shared kernel is a small, explicitly agreed subset of a model, vocabulary, or code shared by two [bounded contexts](bounded-context.md). The teams jointly own its evolution; the benefit of avoiding translation is traded against coordination and coupling costs. It is one relationship recorded in a [context map](context-map.md).[^domain-language-reference]

[^domain-language-reference]: Eric Evans, [Domain-Driven Design Reference](https://www.domainlanguage.com/wp-content/uploads/2016/05/DDD_Reference_2015-03.pdf).
