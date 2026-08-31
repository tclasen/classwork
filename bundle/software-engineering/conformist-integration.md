---
type: Domain-Driven Design Pattern
title: Conformist integration
description: An integration arrangement in which a downstream context adopts an upstream model rather than translating it.
tags: [software-engineering, domain-driven-design, conformist, integration]
subject:
  - ontology: prov-o
    class: "http://www.w3.org/ns/prov#Entity"
    label: Entity
status: stable
generated: { by: "codex/gpt-5.6", at: "2026-08-31T18:00:00-07:00" }
sources: [{ id: domain-language-reference, resource: "https://www.domainlanguage.com/wp-content/uploads/2016/05/DDD_Reference_2015-03.pdf", title: "Domain-Driven Design Reference", author: "eric-evans/domain-language" }]
---

# Adopt an upstream model

In conformist integration, a downstream [bounded context](bounded-context.md) conforms to an upstream model or protocol instead of imposing its own translation. This can reduce integration cost when the upstream model is adequate, but it leaves the downstream context dependent on upstream choices. It is recorded in a [context map](context-map.md).[^domain-language-reference]

[^domain-language-reference]: Eric Evans, [Domain-Driven Design Reference](https://www.domainlanguage.com/wp-content/uploads/2016/05/DDD_Reference_2015-03.pdf).
