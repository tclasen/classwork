---
type: Foundational Concept
title: Security properties and integrity
description: Confidentiality, integrity, authenticity, availability, and their limits.
tags: [foundations, security, integrity, authenticity, confidentiality]
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
  - id: nist-zero-trust
    resource: https://doi.org/10.6028/NIST.SP.800-207
    title: NIST SP 800-207 Zero Trust Architecture
    author: "nist/SP-800-207"
    last_modified: 2020-08-11
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

[^nist-zero-trust]: NIST, [SP 800-207 Zero Trust Architecture](https://doi.org/10.6028/NIST.SP.800-207).
