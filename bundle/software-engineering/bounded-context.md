---
type: Domain-Driven Design Pattern
title: Bounded context
description: An explicit boundary within which a domain model and its language have consistent meaning.
tags: [software-engineering, domain-driven-design, bounded-context, strategic-design]
subject:
  - ontology: prov-o
    class: "http://www.w3.org/ns/prov#Entity"
    label: Entity
status: stable
generated: { by: "codex/gpt-5.6", at: "2026-08-31T18:00:00-07:00" }
sources: [{ id: domain-language-reference, resource: "https://www.domainlanguage.com/wp-content/uploads/2016/05/DDD_Reference_2015-03.pdf", title: "Domain-Driven Design Reference", author: "eric-evans/domain-language" }]
---

# Keep a model consistent

[Domain-driven design](domain-driven-design.md) uses a bounded context as a boundary within which a particular [domain model](domain-model.md), [ubiquitous language](ubiquitous-language.md), and set of assumptions are consistent. It prevents one model from silently accumulating incompatible meanings. A bounded context may be a module, application, or service; it is a modeling boundary, not automatically a deployment boundary. Relationships between contexts belong in a [context map](context-map.md).[^source]

[^source]: Eric Evans, [Domain-Driven Design Reference](https://www.domainlanguage.com/wp-content/uploads/2016/05/DDD_Reference_2015-03.pdf).
