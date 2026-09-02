---
type: Cybersecurity Concept
title: Identity binding and authentication
description: Binding digital identifiers to subjects and testing control of authenticators.
tags: [cybersecurity, identity, authentication, credentials, federation]
subject: []
subject_review:
  status: pending
  reason: no-suitable-authoritative-class
  reviewed:
    by: "codex/gpt-5.6"
    at: "2026-09-02T13:51:36-07:00"
  checked_catalog_keys:
    - cbv-2.0.0
    - ctdlasn-20260626-turtle
    - eco
    - epcis-2.0.1
    - iao-2026-03-30
    - mls-1.0
    - obi-2026-07-27
    - odrl-2.2
    - ontomathpro-v2-acb3eef1
    - org-0.8
    - prov-o
    - sosa-2017-10-19
    - spdx-3.0.1
    - swo-2023-03-05
status: stable
generated: { by: "codex/gpt-5.6", at: "2026-09-02T13:51:36-07:00" }
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
real-world or digital subject through an enrollment or proofing process.[^nist-digital-identity] A
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

[^nist-digital-identity]: NIST, [NIST SP 800-63-4 Digital Identity Guidelines](https://doi.org/10.6028/NIST.SP.800-63-4).
