---
type: Foundational Concept
title: Security properties and integrity
description: Confidentiality, integrity, authenticity, availability, and their limits.
tags: [foundations, security, integrity, authenticity, confidentiality]
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
---

# What protection means

**Confidentiality** limits disclosure to authorized parties. **Integrity**
protects against unauthorized or undetected alteration. **Authenticity** is
evidence that an entity, message, or record is from the claimed source or has
the claimed origin. **Availability** means an authorized party can access a
resource when needed. These properties are distinct: an authentic record may
be false or incomplete, and an intact record may have been produced by an
untrustworthy source.

Controls such as access rules, append-only logs, hashes, signatures, backups,
and monitoring provide evidence or protection under assumptions. No control
removes the need to state its scope, keys or credentials, failure modes, and
threat model. [Actions, policies, and permissions](actions-policies-and-permissions.md)
describes the policy layer; [information, data, and records](information-data-and-records.md)
describes what is protected.

This foundation is necessary for [digital identity and authorization](../cybersecurity/digital-identity-and-authorization.md)
and for trustworthy [product provenance](../supply-chains/product-provenance.md).
It grounds [secure software development](../software-engineering/secure-software-development.md)
and [threat modeling](../software-engineering/threat-modeling.md), which apply
these properties to software design and lifecycle decisions.
In AI evaluation, [responsible AI evaluation and impact](../artificial-intelligence/responsible-ai-evaluation-and-impact.md)
uses these properties to assess confidentiality, integrity, authenticity,
availability, resilience, and the protection of evaluation evidence.
