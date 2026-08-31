---
type: Domain-Driven Design Pattern
title: Aggregate root
description: The identity-bearing entry point through which external code accesses and changes an aggregate.
tags: [software-engineering, domain-driven-design, aggregate-root, tactical-design]
subject:
  - ontology: prov-o
    class: "http://www.w3.org/ns/prov#Entity"
    label: Entity
status: stable
generated: { by: "codex/gpt-5.6", at: "2026-08-31T18:00:00-07:00" }
sources: [{ id: domain-language-reference, resource: "https://www.domainlanguage.com/wp-content/uploads/2016/05/DDD_Reference_2015-03.pdf", title: "Domain-Driven Design Reference", author: "eric-evans/domain-language" }]
---

# Enter an aggregate

An aggregate root is the designated [entity](entities.md) through which outside code references and changes an [aggregate](aggregate.md). In [Domain-driven design](domain-driven-design.md), it enforces the aggregate's invariants and controls access to internal objects, so callers do not bypass its consistency boundary.[^domain-language-reference]

[^domain-language-reference]: Eric Evans, [Domain-Driven Design Reference](https://www.domainlanguage.com/wp-content/uploads/2016/05/DDD_Reference_2015-03.pdf).
