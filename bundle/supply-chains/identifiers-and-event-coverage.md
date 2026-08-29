---
type: Supply Chain Concept
title: Identifiers and event coverage
description: Using scoped identifiers and declared event requirements to make a traceability history useful.
tags: [supply-chain, identifiers, event-coverage, traceability, uncertainty]
subject:
  - ontology: epcis-2.0.1
    class: https://ref.gs1.org/epcis/EPCISEvent
    label: EPCIS event
  - ontology: prov-o
    class: http://www.w3.org/ns/prov#Entity
    label: Entity
status: stable
generated: { by: "codex/gpt-5.6", at: "2026-08-29T00:00:00-07:00" }
sources:
  - id: iso-22005
    resource: https://www.iso.org/standard/36297.html
    title: ISO 22005:2007 Traceability in the feed and food chain
    author: "iso/22005-2007"
    last_modified: 2022-01-01
---

# Joining a history

An identifier must be meaningful in a stated scope and stable enough to join
records. A duplicate, reassigned, ambiguous, or improperly scoped identifier
can make unrelated histories appear continuous or split one history into many.

**Event coverage** is the set of lifecycle events required for a declared
traceability purpose. A gap means that the record does not establish what
happened during that interval; it does not establish that nothing happened.
Coverage should include the backward path to sources and the forward path to
recipients where the decision requires both.[^iso-22005]

[Traceability events and custody](traceability-events-and-custody.md) supplies
the event structure, while [risk and decision](../foundations/risk-and-decision.md)
helps determine what coverage is sufficient for the purpose.

[^iso-22005]: ISO, [ISO 22005:2007 Traceability in the feed and food chain](https://www.iso.org/standard/36297.html).
