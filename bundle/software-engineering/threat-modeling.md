---
type: Software Engineering Practice
title: Threat modeling
description: Repeatedly modeling a system from an adversary's perspective to identify, prioritize, and mitigate security threats.
tags: [software-engineering, security, threat-modeling, risk, design]
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
  - id: owasp-threat-modeling
    resource: https://cheatsheetseries.owasp.org/cheatsheets/Threat_Modeling_Cheat_Sheet.html
    title: OWASP Threat Modeling Cheat Sheet
    author: "owasp/cheat-sheet-series"
  - id: cisa-secure-by-design
    resource: https://www.cisa.gov/sites/default/files/2023-04/principles_approaches_for_security-by-design-default_508_0.pdf
    title: Shifting the Balance of Cybersecurity Risk, Principles and Approaches for Secure by Design Software
---

# Model before and during construction

Threat modeling is a structured, repeatable activity for understanding what a
system does, how an attacker could misuse it, and what responses are worth
implementing. OWASP describes a common sequence: decompose the application,
identify and rank threats, select mitigations, and review and validate the
result.[^owasp-threat-modeling] Perform it early enough to change architecture
and requirements cheaply, then revisit it when trust boundaries, data flows,
dependencies, interfaces, deployment, or attacker capabilities change.

Start with a bounded model: assets and security properties, actors and
capabilities, entry points, data flows, privileged operations, dependencies,
and assumptions. Use a diagram or other representation that the team can
inspect. Enumerate plausible abuse cases, rank them by likelihood and impact,
and record accepted residual risk rather than silently dropping difficult
threats.

# Turn threats into engineering work

A threat model is useful only when it changes decisions. Tie important threats
to security requirements, design constraints, mitigations, tests, monitoring,
and ownership. Validate that mitigations work and that they do not create a
new unacceptable failure mode. CISA’s secure-by-design guidance recommends a
tailored threat model as part of building protections into product blueprints.[^cisa-secure-by-design]

Threat modeling informs [secure software development](secure-software-development.md)
and [requirements engineering and acceptance](requirements-engineering-and-acceptance.md);
it is not a substitute for secure implementation, testing, or incident
response.

[^owasp-threat-modeling]: OWASP, [Threat Modeling Cheat Sheet](https://cheatsheetseries.owasp.org/cheatsheets/Threat_Modeling_Cheat_Sheet.html).
[^cisa-secure-by-design]: CISA and partners, [Principles and Approaches for Secure by Design Software](https://www.cisa.gov/sites/default/files/2023-04/principles_approaches_for_security-by-design-default_508_0.pdf).
