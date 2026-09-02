---
type: Software Engineering Practice
title: Software delivery metrics and feedback
description: Using outcome-oriented delivery and reliability measures to find constraints and guide continuous improvement.
tags: [software-engineering, metrics, feedback, delivery, improvement]
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
  - id: dora-2021
    resource: https://dora.dev/research/2021/dora-report/
    title: DORA Research, Accelerate State of DevOps Report 2021
    author: "dora/research"
  - id: google-reliability
    resource: https://docs.cloud.google.com/architecture/framework/reliability
    title: Google Cloud Well-Architected Framework, Reliability pillar
    author: "google-cloud/architecture-framework"
  - id: aws-operational-excellence
    resource: https://docs.aws.amazon.com/wellarchitected/latest/operational-excellence-pillar/evolve.html
    title: AWS Well-Architected Framework, Evolve
    author: "aws/well-architected"
---

# Measure the delivery system, not individual worth

Metrics are measurements used to make a decision; they are not objectives by
default. Select a small set that reflects outcomes and exposes constraints.
DORA research has examined deployment frequency, lead time for changes, time
to restore service, change failure rate, and reliability as indicators of
software delivery and operational performance.[^dora-2021] Pair speed measures
with quality, reliability, security, user, and team-health measures so local
optimization does not reward unsafe throughput or conceal burnout.

Define each metric precisely: population, event boundaries, unit, aggregation,
time window, exclusions, data quality, and intended use. Compare a team's trend
with its own context rather than treating a benchmark as a universal target.
Do not use metrics to rank individuals; that invites gaming and destroys the
signal needed for learning.

This practice depends on [measurement and uncertainty](../foundations/measurement-and-uncertainty.md): a delivery metric is an observation made through a defined method, so its limitations, variation, and missing data affect what conclusions it can support. Metrics become useful through [risk and decision](../foundations/risk-and-decision.md), because teams use criteria, thresholds, and expected consequences to decide which constraint to address and which trade-offs are acceptable. The review-and-change cycle is also [learning, assessment, and transfer](../foundations/learning-assessment-and-transfer.md): teams assess evidence of performance, learn from the result, and test whether the improved practice transfers to a different context rather than merely repeating a local routine.

# Turn measurement into improvement

Review metrics with the people who do the work, inspect representative cases,
form a hypothesis about the limiting constraint, make a small change, and
check whether the outcome improved without unacceptable trade-offs. AWS
recommends feedback loops, metrics reviews, validated insights, and sharing
lessons as part of continuous operational improvement.[^aws-operational-excellence]
Reliability targets should reflect user experience and be connected to
observation, response, recovery, and learning.[^google-reliability]

Use this practice to tune [continuous integration](continuous-integration.md),
[safe releases](continuous-delivery-and-safe-releases.md), [incident response and blameless postmortems](incident-response-and-blameless-postmortems.md),
and [performance and capacity engineering](performance-and-capacity-engineering.md).

[^dora-2021]: DORA, [Accelerate State of DevOps Report 2021](https://dora.dev/research/2021/dora-report/).
[^google-reliability]: Google Cloud, [Well-Architected Framework: Reliability pillar](https://docs.cloud.google.com/architecture/framework/reliability).
[^aws-operational-excellence]: AWS, [Evolve](https://docs.aws.amazon.com/wellarchitected/latest/operational-excellence-pillar/evolve.html).
