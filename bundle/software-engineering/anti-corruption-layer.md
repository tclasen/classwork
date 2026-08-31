---
type: Domain-Driven Design Pattern
title: Anti-corruption layer
description: A translation boundary that protects one domain model from an external model's concepts and constraints.
tags: [software-engineering, domain-driven-design, anti-corruption-layer, integration]
subject:
  - ontology: prov-o
    class: "http://www.w3.org/ns/prov#Entity"
    label: Entity
status: stable
generated: { by: "codex/gpt-5.6", at: "2026-08-31T18:00:00-07:00" }
sources: [{ id: domain-language-reference, resource: "https://www.domainlanguage.com/wp-content/uploads/2016/05/DDD_Reference_2015-03.pdf", title: "Domain-Driven Design Reference", author: "eric-evans/domain-language" }]
---

# Protect a model

An anti-corruption layer translates between an external [bounded context](bounded-context.md) and a local model so foreign concepts, protocols, and assumptions do not leak inward. It can be implemented with adapters, facades, translators, or a combination. Its ownership and direction should be explicit in a [context map](context-map.md).[^source]

[^source]: Eric Evans, [Domain-Driven Design Reference](https://www.domainlanguage.com/wp-content/uploads/2016/05/DDD_Reference_2015-03.pdf).
