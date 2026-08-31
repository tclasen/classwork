---
type: Domain-Driven Design Pattern
title: Repositories
description: Domain-oriented abstractions for retrieving and persisting aggregates without exposing storage details to the model.
tags: [software-engineering, domain-driven-design, repositories, tactical-design]
subject:
  - ontology: prov-o
    class: "http://www.w3.org/ns/prov#Entity"
    label: Entity
status: stable
generated: { by: "codex/gpt-5.6", at: "2026-08-31T18:00:00-07:00" }
sources: [{ id: domain-language-reference, resource: "https://www.domainlanguage.com/wp-content/uploads/2016/05/DDD_Reference_2015-03.pdf", title: "Domain-Driven Design Reference", author: "eric-evans/domain-language" }]
---

# Retrieve aggregates by domain meaning

In [Domain-driven design](domain-driven-design.md), a repository provides a domain-oriented way to retrieve and persist [aggregates](aggregate.md). Its interface expresses the model's needs while infrastructure supplies the storage implementation. A repository should not reduce the domain model to a thin wrapper around a particular database or leak persistence concerns into invariant enforcement.[^domain-language-reference]

[^domain-language-reference]: Eric Evans, [Domain-Driven Design Reference](https://www.domainlanguage.com/wp-content/uploads/2016/05/DDD_Reference_2015-03.pdf).
