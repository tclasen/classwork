---
type: Domain-Driven Design Pattern
title: Entities
description: Domain objects whose identity persists across changes and distinguishes them from other objects.
tags: [software-engineering, domain-driven-design, entities, tactical-design]
subject:
  - ontology: prov-o
    class: "http://www.w3.org/ns/prov#Entity"
    label: Entity
status: stable
generated: { by: "codex/gpt-5.6", at: "2026-08-31T18:00:00-07:00" }
sources: [{ id: domain-language-reference, resource: "https://www.domainlanguage.com/wp-content/uploads/2016/05/DDD_Reference_2015-03.pdf", title: "Domain-Driven Design Reference", author: "eric-evans/domain-language" }]
---

# Track identity

An entity is a domain object defined primarily by identity that persists through changes to its attributes. Its behavior and lifecycle belong in the [domain model](domain-model.md), and it may participate in an [aggregate](aggregate.md). Use an entity when continuity matters more than structural equality.[^domain-language-reference]

[^domain-language-reference]: Eric Evans, [Domain-Driven Design Reference](https://www.domainlanguage.com/wp-content/uploads/2016/05/DDD_Reference_2015-03.pdf).
