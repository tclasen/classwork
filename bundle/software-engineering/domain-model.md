---
type: Domain-Driven Design Concept
title: Domain model
description: A selective model of domain concepts, relationships, rules, and behavior that guides software design.
tags: [software-engineering, domain-driven-design, domain-modeling]
subject:
  - ontology: prov-o
    class: "http://www.w3.org/ns/prov#Entity"
    label: Entity
status: stable
generated: { by: "codex/gpt-5.6", at: "2026-08-31T00:00:00-07:00" }
sources: [{ id: domain-language-reference, resource: "https://www.domainlanguage.com/wp-content/uploads/2016/05/DDD_Reference_2015-03.pdf", title: "Domain-Driven Design Reference", author: "eric-evans/domain-language" }]
---

# Model the domain

A domain model is a selective representation of the concepts, relationships, rules, and behavior that matter in a problem domain. In [domain-driven design](domain-driven-design.md), experts and engineers refine it through a [ubiquitous language](ubiquitous-language.md) and implement it inside one or more [bounded contexts](bounded-context.md). It is not a complete copy of reality or merely a database schema.[^source]

[^source]: Eric Evans, [Domain-Driven Design Reference](https://www.domainlanguage.com/wp-content/uploads/2016/05/DDD_Reference_2015-03.pdf).
