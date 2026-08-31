---
type: Domain-Driven Design Pattern
title: Domain events
description: Records of significant domain occurrences that allow other parts of a model to react to a completed change.
tags: [software-engineering, domain-driven-design, domain-events, tactical-design]
subject:
  - ontology: prov-o
    class: "http://www.w3.org/ns/prov#Entity"
    label: Entity
status: stable
generated: { by: "codex/gpt-5.6", at: "2026-08-31T18:00:00-07:00" }
sources: [{ id: domain-language-reference, resource: "https://www.domainlanguage.com/wp-content/uploads/2016/05/DDD_Reference_2015-03.pdf", title: "Domain-Driven Design Reference", author: "eric-evans/domain-language" }]
---

# Record meaningful occurrences

A domain event records that something meaningful happened in the domain, such as an order being accepted. Other parts of the model can react without hiding the causal change inside a direct call. Event delivery, ordering, duplication, and failure semantics remain explicit engineering decisions.[^domain-language-reference]

[^domain-language-reference]: Eric Evans, [Domain-Driven Design Reference](https://www.domainlanguage.com/wp-content/uploads/2016/05/DDD_Reference_2015-03.pdf).
