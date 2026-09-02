---
type: Software Engineering Practice
title: Continuous delivery and safe releases
description: Keeping software in a releasable state and using automated, observable, reversible paths to production.
tags: [software-engineering, continuous-delivery, releases, deployment, rollback]
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
  - id: github-actions
    resource: https://docs.github.com/en/actions/get-started/understand-github-actions
    title: GitHub Docs, Understanding GitHub Actions
    author: "github/docs"
  - id: aws-operational-excellence
    resource: https://docs.aws.amazon.com/wellarchitected/latest/operational-excellence-pillar/evolve.html
    title: AWS Well-Architected Framework, Evolve
    author: "aws/well-architected"
  - id: google-sre-change-management
    resource: https://sre.google/sre-book/introduction/
    title: Google SRE, Change Management
    author: "google/sre-book"
---

# Keep the path to production routine

Continuous delivery means maintaining software in a state where it can be
released through a repeatable, low-friction process. Automate build,
verification, packaging, deployment, environment configuration, and release
evidence as far as the risk and context justify. Continuous deployment is one
possible policy: an organization may still require an explicit approval or
scheduled window before production.

Use a single promoted artifact where practical, separate build from release
configuration, and make the release observable. Use [software delivery metrics and feedback](software-delivery-metrics-and-feedback.md) to interpret release health and guide improvement. A release should have clear ownership,
prerequisites, acceptance signals, and a documented recovery path.
Do not treat automation as safety by itself; inspect permissions, secrets,
dependencies, environment differences, and the consequences of partial
failure.

# Limit blast radius

Prefer frequent, small, reversible changes. Progressive delivery—such as
canaries, staged rollout, feature flags, or blue-green deployment—reduces the
number of users exposed before health is known. Automate detection and
rollback or provide an explicit forward-fix path. Google SRE identifies
progressive rollout, accurate detection, and safe rollback as a change-
management trio that limits exposure to bad changes.[^google-sre-change-management]

GitHub describes CI/CD workflows as building and testing pull requests, then
deploying merged changes; AWS similarly recommends small changes, safe
deployment strategies, automated testing, and rollback.[^github-actions]
[^aws-operational-excellence] Pair release automation with [continuous integration](continuous-integration.md),
[observability and operational readiness](observability-and-operational-readiness.md),
and [version control and small reversible changes](version-control-and-small-reversible-changes.md).

[^google-sre-change-management]: Google SRE, [Introduction](https://sre.google/sre-book/introduction/).
[^github-actions]: GitHub, [Understanding GitHub Actions](https://docs.github.com/en/actions/get-started/understand-github-actions).
[^aws-operational-excellence]: AWS, [Evolve](https://docs.aws.amazon.com/wellarchitected/latest/operational-excellence-pillar/evolve.html).
