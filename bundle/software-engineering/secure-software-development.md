---
type: Software Engineering Practice
title: Secure software development
description: Integrating security ownership, risk reduction, verification, and vulnerability response throughout the software lifecycle.
tags: [software-engineering, security, secure-by-design, vulnerabilities, supply-chain]
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
  - id: nist-ssdf
    resource: https://csrc.nist.gov/pubs/sp/800/218/final
    title: NIST SP 800-218, Secure Software Development Framework Version 1.1
    author: "nist/csrc"
  - id: cisa-secure-by-design
    resource: https://www.cisa.gov/sites/default/files/2023-04/principles_approaches_for_security-by-design-default_508_0.pdf
    title: Shifting the Balance of Cybersecurity Risk, Principles and Approaches for Secure by Design Software
  - id: nist-supply-chain
    resource: https://www.nist.gov/itl/executive-order-14028-improving-nations-cybersecurity/software-supply-chain-security-guidance-14
    title: NIST Software Supply Chain Security Guidance
---

# Treat security as a lifecycle property

Secure software development integrates security into planning, design,
implementation, testing, release, operation, and maintenance. NIST’s Secure
Software Development Framework (SSDF) is intentionally a set of practices that
can be added to different lifecycle models; it is not a replacement for the
team's product, delivery, or risk process.[^nist-ssdf]

Make security an owned product-quality outcome, not a late gate delegated to
one specialist. Identify security requirements and abuse cases, use safe
defaults and well-understood components, constrain trust boundaries, validate
inputs, protect secrets, review high-risk changes, and [test security controls](automated-testing-and-test-strategy.md)
as a risk-targeted application of test strategy. Select controls proportional
to the threat, data, users, and consequences.

# Manage the lifecycle after release

Maintain an inventory of software and dependencies, monitor for newly
discovered vulnerabilities, provide a path for reporting and fixing them, and
communicate material risk and remediation. NIST’s supply-chain guidance connects
secure development practices with procurement, software verification, SBOMs,
open-source controls, and vulnerability management.[^nist-supply-chain]

Secure-by-design guidance shifts responsibility toward producers: perform a
tailored risk assessment, build protections into the product blueprint, and
measure progress against recurring vulnerability classes.[^cisa-secure-by-design]
These practices complement [threat modeling](threat-modeling.md), existing
[security properties and integrity](../foundations/security-properties-and-integrity.md),
and [software dependency and compatibility](software-dependency-and-compatibility.md).

[^nist-ssdf]: NIST, [SP 800-218, Secure Software Development Framework Version 1.1](https://csrc.nist.gov/pubs/sp/800/218/final).
[^cisa-secure-by-design]: CISA and partners, [Principles and Approaches for Secure by Design Software](https://www.cisa.gov/sites/default/files/2023-04/principles_approaches_for_security-by-design-default_508_0.pdf).
[^nist-supply-chain]: NIST, [Software Supply Chain Security Guidance](https://www.nist.gov/itl/executive-order-14028-improving-nations-cybersecurity/software-supply-chain-security-guidance-14).
