---
type: Domain-Driven Design Pattern
title: Ubiquitous language
description: A shared domain vocabulary whose meanings remain consistent across conversation, documentation, tests, and code.
tags: [software-engineering, domain-driven-design, ubiquitous-language]
subject:
  - ontology: prov-o
    class: "http://www.w3.org/ns/prov#Entity"
    label: Entity
status: stable
generated: { by: "codex/gpt-5.6", at: "2026-08-31T00:00:00-07:00" }
sources: [{ id: domain-language-reference, resource: "https://www.domainlanguage.com/wp-content/uploads/2016/05/DDD_Reference_2015-03.pdf", title: "Domain-Driven Design Reference", author: "eric-evans/domain-language" }]
---

# Shared vocabulary

[Domain-driven design](domain-driven-design.md) develops a deliberately shared vocabulary, called ubiquitous language, for domain experts and engineers when describing a [domain model](domain-model.md). Important terms should carry the same intended meaning in conversation, requirements, tests, and implementation. It is specific to a [bounded context](bounded-context.md), so identical words may legitimately differ across contexts.[^domain-language-reference]

[^domain-language-reference]: Eric Evans, [Domain-Driven Design Reference](https://www.domainlanguage.com/wp-content/uploads/2016/05/DDD_Reference_2015-03.pdf).
