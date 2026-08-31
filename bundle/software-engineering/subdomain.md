---
type: Domain-Driven Design Pattern
title: Subdomain
description: A meaningful part of a broader problem domain with a distinct purpose, capability, or set of rules.
tags: [software-engineering, domain-driven-design, subdomain, strategic-design]
subject:
  - ontology: prov-o
    class: "http://www.w3.org/ns/prov#Entity"
    label: Entity
status: stable
generated: { by: "codex/gpt-5.6", at: "2026-08-31T18:00:00-07:00" }
sources: [{ id: domain-language-reference, resource: "https://www.domainlanguage.com/wp-content/uploads/2016/05/DDD_Reference_2015-03.pdf", title: "Domain-Driven Design Reference", author: "eric-evans/domain-language" }]
---

# Divide the problem domain

A subdomain is a meaningful portion of a broader problem domain, identified by a capability, purpose, or coherent set of rules. [Domain-driven design](domain-driven-design.md) uses subdomains to reason about where different models and investments are needed. A subdomain is a problem-space distinction; a [bounded context](bounded-context.md) is a model and language boundary in the solution space. They may align, but are not synonyms.[^source]

[^source]: Eric Evans, [Domain-Driven Design Reference](https://www.domainlanguage.com/wp-content/uploads/2016/05/DDD_Reference_2015-03.pdf).
