---
type: Domain-Driven Design Pattern
title: Aggregate
description: A consistency boundary that groups related domain objects and protects their invariants.
tags: [software-engineering, domain-driven-design, aggregate, tactical-design]
subject:
  - ontology: prov-o
    class: "http://www.w3.org/ns/prov#Entity"
    label: Entity
status: stable
generated: { by: "codex/gpt-5.6", at: "2026-08-31T18:00:00-07:00" }
sources: [{ id: domain-language-reference, resource: "https://www.domainlanguage.com/wp-content/uploads/2016/05/DDD_Reference_2015-03.pdf", title: "Domain-Driven Design Reference", author: "eric-evans/domain-language" }]
---

# Protect invariants

An aggregate is a cluster of [entities](entities.md) and [value objects](value-objects.md) treated as one consistency boundary. Outside code coordinates changes through its [aggregate root](aggregate-root.md), while the aggregate protects invariants and makes transaction and concurrency choices explicit. Aggregates should be sized around consistency needs, not merely object containment.[^domain-language-reference]

[^domain-language-reference]: Eric Evans, [Domain-Driven Design Reference](https://www.domainlanguage.com/wp-content/uploads/2016/05/DDD_Reference_2015-03.pdf).
