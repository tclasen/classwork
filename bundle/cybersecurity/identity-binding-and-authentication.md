---
type: Cybersecurity Concept
title: Identity binding and authentication
description: Binding digital identifiers to subjects and testing control of authenticators.
tags: [cybersecurity, identity, authentication, credentials, federation]
subject:
  - ontology: prov-o
    class: http://www.w3.org/ns/prov#Agent
    label: Agent
status: stable
generated: { by: "codex/gpt-5.6", at: "2026-08-29T00:00:00-07:00" }
sources:
  - id: nist-digital-identity
    resource: https://doi.org/10.6028/NIST.SP.800-63-4
    title: NIST SP 800-63-4 Digital Identity Guidelines
    author: "nist/SP-800-63-4"
    last_modified: 2025-08-01
---

# Establishing an asserted identity

An **identifier** is a name or value used to refer to a subject within a
scope. **Identity binding** connects that identifier and its attributes to a
real-world or digital subject through an enrollment or proofing process. A
**credential** is evidence or a data object used in that relationship. An
**authenticator** is something the subject controls and can present to support
an authentication event.

**Authentication** tests an assertion about a subject by checking an
authenticator or trusted assertion. A successful test establishes a result at
an assurance level; it does not automatically establish every attribute or
grant access. Federation carries identity and authentication results between
domains with a trust relationship. [Time, identity, and relationships](../foundations/time-identity-and-relationships.md)
explains reference and scope, while [digital identity and authorization](digital-identity-and-authorization.md)
explains the downstream access decision.

[^nist-digital-identity]: NIST, [SP 800-63-4 Digital Identity Guidelines](https://doi.org/10.6028/NIST.SP.800-63-4).
