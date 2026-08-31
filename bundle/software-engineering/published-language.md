---
type: Domain-Driven Design Pattern
title: Published language
description: A well-defined shared language or exchange model used to communicate across bounded-context boundaries.
tags: [software-engineering, domain-driven-design, published-language, integration]
subject:
  - ontology: prov-o
    class: "http://www.w3.org/ns/prov#Entity"
    label: Entity
status: stable
generated: { by: "codex/gpt-5.6", at: "2026-08-31T00:00:00-07:00" }
sources: [{ id: domain-language-reference, resource: "https://www.domainlanguage.com/wp-content/uploads/2016/05/DDD_Reference_2015-03.pdf", title: "Domain-Driven Design Reference", author: "eric-evans/domain-language" }]
---

# Publish an integration language

A [published language](domain-driven-design.md) is a documented, stable language or model used to communicate between [bounded contexts](bounded-context.md). It avoids forcing consumers to depend on a producer's internal model, but requires governance as the published contract evolves. It is an integration relationship in a [context map](context-map.md).[^source]

[^source]: Eric Evans, [Domain-Driven Design Reference](https://www.domainlanguage.com/wp-content/uploads/2016/05/DDD_Reference_2015-03.pdf).
