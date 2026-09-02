---
type: Software Engineering Practice
title: Architecture documentation and decisions
description: Recording system structure, important constraints, trade-offs, and decisions so architecture remains understandable and reviewable.
tags: [software-engineering, architecture, documentation, decisions, design]
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
  - id: google-well-architected
    resource: https://docs.cloud.google.com/architecture/framework
    title: Google Cloud Well-Architected Framework
    author: "google-cloud/architecture-framework"
  - id: aws-on-architecture
    resource: https://docs.aws.amazon.com/wellarchitected/latest/framework/on-architecture.html
    title: AWS Well-Architected Framework, On architecture
    author: "aws/well-architected"
  - id: google-review-looking
    resource: https://google.github.io/eng-practices/review/reviewer/looking-for.html
    title: Google Engineering Practices, What to look for in a code review
    author: "google/eng-practices"
---

# Make architecture a shared model

Architecture documentation describes the important parts of a system, their
relationships, interfaces, data and control flows, operating environment,
quality attributes, constraints, and failure assumptions. It should help a
new contributor, reviewer, operator, or incident responder understand the
system well enough to make a safe decision. Google’s Well-Architected
Framework identifies documenting architecture as a core practice because
missing documentation obstructs visualization, decoupling, security,
reliability, monitoring, and performance decisions.[^google-well-architected]

Document the level of detail that supports current decisions. Keep diagrams,
interfaces, examples, deployment topology, dependencies, and operational
procedures close to the code or system they describe, and check important
documentation as part of normal change review. Prefer a small set of accurate,
maintained documents to a large archive that no longer matches reality.

# Record decisions, not just diagrams

For a consequential choice, record the context and problem, considered
options, decision, rationale, constraints, expected consequences, and signals
that would justify revisiting it. This decision record is a durable explanation
of why the architecture looks as it does; it is not a command to preserve a
design forever. Review architecture changes for overall system fit, behavior,
complexity, tests, security, and operability, as Google’s code-review guidance
recommends.[^google-review-looking]

AWS frames architecture as a set of trade-offs across operational excellence,
security, reliability, performance, cost, and sustainability rather than a
single universal design.[^aws-on-architecture] For domain boundaries and
models that keep architecture aligned with problem meaning, see
[domain-driven design](domain-driven-design.md). Connect decisions to
[requirements engineering and acceptance](requirements-engineering-and-acceptance.md),
[threat modeling](threat-modeling.md), and [observability and operational readiness](observability-and-operational-readiness.md).

[^google-well-architected]: Google Cloud, [Well-Architected Framework](https://docs.cloud.google.com/architecture/framework).
[^aws-on-architecture]: AWS, [On architecture](https://docs.aws.amazon.com/wellarchitected/latest/framework/on-architecture.html).
[^google-review-looking]: Google, [What to look for in a code review](https://google.github.io/eng-practices/review/reviewer/looking-for.html).
