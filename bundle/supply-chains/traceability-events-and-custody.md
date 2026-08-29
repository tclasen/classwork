---
type: Supply Chain Concept
title: Traceability events and custody
description: Recording identified objects, transformations, movements, and custody changes through a supply chain.
tags: [supply-chain, traceability, events, custody, EPCIS]
subject:
  - ontology: epcis-2.0.1
    class: https://ref.gs1.org/epcis/EPCISEvent
    label: EPCIS event
  - ontology: prov-o
    class: http://www.w3.org/ns/prov#Activity
    label: Activity
status: stable
generated: { by: "codex/gpt-5.6", at: "2026-08-29T00:00:00-07:00" }
sources:
  - id: gs1-epcis
    resource: https://ref.gs1.org/standards/epcis/2.0.1/
    title: GS1 EPCIS 2.0.1 Standard
    author: "gs1/EPCIS-2.0.1"
    last_modified: 2025-07-01
---

# Event records

A traceability event records what happened to an identified item, lot,
container, or digital representation, including relevant time, location,
business step, disposition, responsible party, inputs, and outputs. A custody
change records a transfer of control or possession; it is not necessarily a
transfer of ownership. A transformation relates consumed inputs to produced
outputs.

An event record is an [information, data, and records](../foundations/information-data-and-records.md)
entity describing an [activity](../foundations/entities-activities-and-agents.md).
Stable identifiers and [time, identity, and relationships](../foundations/time-identity-and-relationships.md)
make events joinable, while [security properties and integrity](../foundations/security-properties-and-integrity.md)
helps protect their interpretation. The resulting history is evidence, not
automatic proof of safety, authenticity, or ethical sourcing.

[^gs1-epcis]: GS1, [EPCIS 2.0.1 Standard](https://ref.gs1.org/standards/epcis/2.0.1/).
