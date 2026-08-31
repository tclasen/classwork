---
type: Domain-Driven Design Pattern
title: Value objects
description: Immutable domain objects defined by their attributes rather than by persistent identity.
tags: [software-engineering, domain-driven-design, value-objects, tactical-design]
subject:
  - ontology: prov-o
    class: "http://www.w3.org/ns/prov#Entity"
    label: Entity
status: stable
generated: { by: "codex/gpt-5.6", at: "2026-08-31T18:00:00-07:00" }
sources: [{ id: domain-language-reference, resource: "https://www.domainlanguage.com/wp-content/uploads/2016/05/DDD_Reference_2015-03.pdf", title: "Domain-Driven Design Reference", author: "eric-evans/domain-language" }]
---

# Describe by value

In [Domain-driven design](domain-driven-design.md), a value object is defined by its attributes and behavior rather than a persistent identity. It is commonly immutable, interchangeable with another instance having the same value, and useful for making domain meaning explicit—for example, a measured amount or address. Value objects often live inside an [aggregate](aggregate.md).[^domain-language-reference]

[^domain-language-reference]: Eric Evans, [Domain-Driven Design Reference](https://www.domainlanguage.com/wp-content/uploads/2016/05/DDD_Reference_2015-03.pdf).
