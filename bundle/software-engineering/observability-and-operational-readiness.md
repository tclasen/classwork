---
type: Software Engineering Practice
title: Observability and operational readiness
description: Designing software to emit actionable evidence and preparing teams and procedures to operate it safely.
tags: [software-engineering, observability, telemetry, reliability, operations]
subject:
  - ontology: prov-o
    class: http://www.w3.org/ns/prov#Activity
    label: Activity
  - ontology: prov-o
    class: http://www.w3.org/ns/prov#Entity
    label: Entity
status: stable
generated: { by: "codex/gpt-5.6", at: "2026-09-01T11:15:18-07:00" }
sources:
  - id: opentelemetry-primer
    resource: https://opentelemetry.io/docs/concepts/observability-primer/
    title: OpenTelemetry, Observability primer
    author: "opentelemetry/docs"
  - id: opentelemetry-signals
    resource: https://opentelemetry.io/docs/concepts/signals/
    title: OpenTelemetry, Signals
    author: "opentelemetry/docs"
    last_modified: 2026-03-10
  - id: google-reliability
    resource: https://docs.cloud.google.com/architecture/framework/reliability
    title: Google Cloud Well-Architected Framework, Reliability pillar
    author: "google-cloud/architecture-framework"
---

# Build for questions you will need to answer

Observability is the ability to understand a system's internal state from
externally emitted evidence, including when the failure is novel.[^opentelemetry-primer] Instrument
important user journeys, boundaries, dependencies, and resources so an
operator can answer what happened, who was affected, why it happened, and
whether a mitigation worked. OpenTelemetry organizes common telemetry as
traces, metrics, logs, and contextual baggage; a trace follows a request,
metrics measure runtime behavior, and logs record events.[^opentelemetry-signals]

Choose signals and dimensions that support user-centered service-level
indicators, diagnosis, capacity decisions, and security investigation. Use
structured logs with correlation identifiers, meaningful metric names and
units, traces across important boundaries, and retention and access controls
appropriate to the data. Avoid collecting sensitive data merely because it is
easy to emit.

# Make operations a designed capability

Before release, define ownership, service objectives, dependencies, dashboards,
actionable alerts, escalation paths, runbooks, backup and recovery procedures,
and known failure modes. Test that operators can use the evidence and
procedures under realistic conditions. Google’s reliability guidance groups
reliability work into scoping, observation, response, and learning, and
recommends observability, automated recovery, recovery testing, and
postmortems.[^google-reliability]

For an [agent control loop](../artificial-intelligence/agent-control-loops-and-tool-use.md),
signals should make plans, tool calls, approvals, observations, retries, and
stops inspectable without exposing unnecessary sensitive content.
[Retrieval and external context](../artificial-intelligence/retrieval-and-external-context.md)
extends this concern to index freshness, query quality, returned sources,
context size, citations, and memory access.
For responsible AI evaluation, these runtime signals provide evidence about
drift, incidents, subgroup effects, privacy exposure, and whether mitigations
worked; interpret them through [responsible AI evaluation and impact](../artificial-intelligence/responsible-ai-evaluation-and-impact.md).

Operational readiness is a property of the system and its surrounding team,
not a monitoring dashboard added after deployment. Connect it to [safe releases](continuous-delivery-and-safe-releases.md), [incident response and blameless postmortems](incident-response-and-blameless-postmortems.md),
and [performance and capacity engineering](performance-and-capacity-engineering.md).

[^opentelemetry-signals]: OpenTelemetry, [Signals](https://opentelemetry.io/docs/concepts/signals/).
[^google-reliability]: Google Cloud, [Well-Architected Framework: Reliability pillar](https://docs.cloud.google.com/architecture/framework/reliability).
[^opentelemetry-primer]: OpenTelemetry, [Observability primer](https://opentelemetry.io/docs/concepts/observability-primer/).
