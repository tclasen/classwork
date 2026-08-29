---
type: Software Engineering Practice
title: Software delivery metrics and feedback
description: Using outcome-oriented delivery and reliability measures to find constraints and guide continuous improvement.
tags: [software-engineering, metrics, feedback, delivery, improvement]
subject:
  - ontology: prov-o
    class: http://www.w3.org/ns/prov#Activity
    label: Activity
  - ontology: prov-o
    class: http://www.w3.org/ns/prov#Entity
    label: Entity
status: stable
generated: { by: "codex/gpt-5.6", at: "2026-08-29T00:00:00-07:00" }
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

# Turn measurement into improvement

Review metrics with the people who do the work, inspect representative cases,
form a hypothesis about the limiting constraint, make a small change, and
check whether the outcome improved without unacceptable trade-offs. AWS
recommends feedback loops, metrics reviews, validated insights, and sharing
lessons as part of continuous operational improvement.[^aws-operational-excellence]
Reliability targets should reflect user experience and be connected to
observation, response, recovery, and learning.[^google-reliability]

Use this practice to tune [continuous integration](continuous-integration.md),
[safe releases](continuous-delivery-and-safe-releases.md), [incident response
and blameless postmortems](incident-response-and-blameless-postmortems.md),
and [performance and capacity engineering](performance-and-capacity-engineering.md).

[^dora-2021]: DORA, [Accelerate State of DevOps Report 2021](https://dora.dev/research/2021/dora-report/).
[^google-reliability]: Google Cloud, [Well-Architected Framework: Reliability pillar](https://docs.cloud.google.com/architecture/framework/reliability).
[^aws-operational-excellence]: AWS, [Evolve](https://docs.aws.amazon.com/wellarchitected/latest/operational-excellence-pillar/evolve.html).
