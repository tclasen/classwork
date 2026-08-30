---
type: Software Engineering Practice
title: API and interface design
description: Designing explicit, discoverable, evolvable contracts between software components and their users.
tags: [software-engineering, api, interfaces, contracts, compatibility, design]
subject:
  - ontology: prov-o
    class: http://www.w3.org/ns/prov#Entity
    label: Entity
  - ontology: prov-o
    class: http://www.w3.org/ns/prov#Activity
    label: Activity
status: stable
generated: { by: "codex/gpt-5.6", at: "2026-08-29T00:00:00-07:00" }
sources:
  - id: google-api-design
    resource: https://docs.cloud.google.com/apis/design
    title: Google Cloud API Design Guide
    author: "google-cloud/api-design"
    last_modified: 2026-08-26
  - id: google-api-naming
    resource: https://cloud.google.com/apis/design/naming_convention
    title: Google Cloud API Design Guide, Naming conventions
    author: "google-cloud/api-design"
---

# Design the contract before the implementation

An API or interface is a contract among a provider, a consumer, and the
environment in which they interact. Define the resources or capabilities,
operations, data shapes, invariants, errors, permissions, timeouts, retry
behavior, observability, and compatibility promises. Use terminology that is
consistent, specific, and understandable to the intended consumers. Google's
API guide emphasizes resource-oriented design, standard methods, explicit
resource names, versioning, backward compatibility, errors, and inline
documentation.[^google-api-design]

Prefer the smallest contract that solves a demonstrated need. Make invalid
states difficult to express, distinguish client and server failures, and
design idempotency and pagination deliberately when operations may be retried
or results may grow. Document examples and failure behavior, not only the
happy-path signature.

# Evolve without surprising consumers

Treat an interface as a long-lived dependency. Define compatibility at the
source, binary, behavioral, data, and operational levels as applicable; test
the promised compatibility; and introduce breaking changes through an
explicit versioning or migration policy. Consistent naming improves developer
experience across a family of APIs, while ambiguous or overloaded names make
contracts harder to use safely.[^google-api-naming]

Connect interface design to [packages, interfaces, and environments](packages-interfaces-and-environments.md),
[software dependency and compatibility](software-dependency-and-compatibility.md),
[requirements engineering and acceptance](requirements-engineering-and-acceptance.md),
and [architecture documentation and decisions](architecture-documentation-and-decisions.md).
[Retrieval and external context](../artificial-intelligence/retrieval-and-external-context.md)
is a concrete example of an interface whose query, result, permission, freshness,
and failure contracts affect model and agent behavior.

[^google-api-design]: Google Cloud, [API design guide](https://docs.cloud.google.com/apis/design).
[^google-api-naming]: Google Cloud, [Naming conventions](https://cloud.google.com/apis/design/naming_convention).
