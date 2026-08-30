---
type: Software Engineering Practice
title: Incident response and blameless postmortems
description: Responding to service-impacting events and converting evidence about failure into concrete system improvements.
tags: [software-engineering, incidents, reliability, postmortems, learning]
subject:
  - ontology: prov-o
    class: http://www.w3.org/ns/prov#Activity
    label: Activity
  - ontology: prov-o
    class: http://www.w3.org/ns/prov#Plan
    label: Plan
status: stable
generated: { by: "codex/gpt-5.6", at: "2026-08-29T00:00:00-07:00" }
sources:
  - id: google-sre-postmortem
    resource: https://sre.google/sre-book/postmortem-culture/
    title: Google SRE, Postmortem Culture
    author: "google/sre-book"
  - id: google-sre-workbook-postmortem
    resource: https://sre.google/workbook/postmortem-culture/
    title: "Google SRE Workbook, Postmortem Culture: Learning from Failure"
    author: "google/sre-workbook"
  - id: aws-operational-excellence
    resource: https://docs.aws.amazon.com/wellarchitected/latest/operational-excellence-pillar/evolve.html
    title: AWS Well-Architected Framework, Evolve
    author: "aws/well-architected"
---

# Respond deliberately during failure

Incident response is the coordinated process of detecting, assessing,
containing, communicating, recovering from, and learning from an event that
threatens users, data, or service objectives. Prepare before an incident:
define severity and escalation, ownership, roles, communication channels,
runbooks, rollback and recovery procedures, and the evidence operators need.
Alerts should be actionable and aligned with user impact or service
objectives, not merely noisy changes in infrastructure metrics.

During response, establish a shared timeline and current hypothesis, reduce
customer harm, preserve useful evidence, communicate uncertainty, and choose
the safest reversible mitigation available. Separate restoring service from
the later work of understanding every contributing factor.

# Learn without blame

Write a postmortem for significant user-visible degradation, data loss,
emergency intervention, or another pre-defined trigger. Explain impact,
detection, timeline, contributing conditions, what went well, what did not,
and concrete action items with owners and verifiable completion criteria.[^google-sre-workbook-postmortem]
Google SRE defines blamelessness as examining system and process conditions
without indicting people who acted with the information available at the
time.[^google-sre-postmortem] A blameless process is not consequence-free:
teams remain accountable for completing improvements.

Feed lessons into [observability and operational readiness](observability-and-operational-readiness.md),
[safe releases](continuous-delivery-and-safe-releases.md), capacity plans,
tests, threat models, and design. AWS recommends post-incident analysis,
feedback loops, and sharing lessons across teams as part of operational
excellence.[^aws-operational-excellence]

[^google-sre-postmortem]: Google SRE, [Postmortem Culture](https://sre.google/sre-book/postmortem-culture/).
[^google-sre-workbook-postmortem]: Google SRE Workbook, Postmortem Culture: Learning from Failure.
[^aws-operational-excellence]: AWS, [Evolve](https://docs.aws.amazon.com/wellarchitected/latest/operational-excellence-pillar/evolve.html).
