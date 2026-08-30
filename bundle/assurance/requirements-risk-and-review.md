---
type: Assurance Concept
title: Requirements, risk, and review
description: Turning a bounded quality claim into criteria, evidence, risk treatment, and a review decision.
tags: [assurance, requirements, risk, review, criteria]
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
  - id: iso-assurance-case
    resource: https://www.iso.org/obp/ui?_escaped_fragment_=iso:std:iso-iec-ieee:15026:-2:ed-2:v1:en
    title: ISO/IEC/IEEE 15026-2:2022 Systems and software engineering — Assurance case
    author: "iso-iec-ieee/15026-2:2022"
---

# From claim to decision

A **requirement** states what a system or process must do or satisfy. A
**quality property** is an attribute being evaluated, such as integrity,
availability, or traceability. A **criterion** makes acceptance assessable; a
metric gives a way to observe or calculate it, and a threshold marks an
acceptable boundary.

Review compares evidence with the criterion in the declared context. It also
asks what could defeat the claim, how severe that failure would be, and whether
the evidence covers the actual system and conditions. [Risk and decision](../foundations/risk-and-decision.md)
defines consequence and uncertainty; [argument validity and rebuttal](../reasoning/argument-validity-and-rebuttal.md)
defines the reasoning that connects evidence to a decision.

An [assurance case](assurance-case.md) keeps the claim, assumptions, evidence,
argument, limits, and review outcome visible rather than reducing them to a
label.[^iso-assurance-case] In software work, [requirements engineering and acceptance](../software-engineering/requirements-engineering-and-acceptance.md)
turns stakeholder needs into traceable acceptance evidence, while [automated testing and test strategy](../software-engineering/automated-testing-and-test-strategy.md)
provides one important class of verification evidence.

[^iso-assurance-case]: ISO/IEC/IEEE, [15026-2:2022 Systems and software engineering — Assurance case](https://www.iso.org/obp/ui?_escaped_fragment_=iso:std:iso-iec-ieee:15026:-2:ed-2:v1:en).
