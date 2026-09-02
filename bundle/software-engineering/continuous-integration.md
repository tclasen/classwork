---
type: Software Engineering Practice
title: Continuous integration
description: Frequently integrating small changes into a shared mainline and automatically building and testing each integration.
tags: [software-engineering, continuous-integration, ci, build, testing]
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
  - id: fowler-ci
    resource: https://martinfowler.com/articles/continuousIntegration.html
    title: Martin Fowler, Continuous Integration
  - id: github-ci
    resource: https://docs.github.com/en/actions/get-started/continuous-integration
    title: GitHub Docs, Continuous integration
    author: "github/docs"
---

# Integrate early and often

Continuous integration (CI) is the practice of integrating each developer's
work into a shared mainline frequently—at least daily in Fowler's classic
definition—and verifying each integration with an automated build and tests.[^fowler-ci]
The purpose is rapid feedback: conflicts and integration errors are cheaper to
fix when the change set and suspected cause are small.

A useful CI pipeline checks out the exact revision, installs or resolves
declared dependencies, builds from a clean environment, runs relevant tests,
and publishes actionable results. Add linting, static analysis, security
checks, compatibility checks, or artifact validation when they address a
material risk. Keep the mainline releasable, make failures visible, and assign
ownership for restoring a broken build.

# Optimize for feedback, not ceremony

CI is not merely a server that runs tests after large batches of work. Small
changes, explicit build inputs, repeatable setup, fast checks, and a clean
failure signal are the enabling conditions. GitHub describes CI as frequent
commits combined with continuous build and test checks that detect errors
sooner and reduce merge-debugging effort.[^github-ci]

CI provides evidence for [code review](code-review.md) and [automated testing and test strategy](automated-testing-and-test-strategy.md), but passing CI is
not proof that untested requirements, production behavior, or operational
risks are safe.

```mermaid
flowchart LR
    C[Small change] --> M[Shared mainline]
    M --> B[Clean build]
    B --> T[Automated checks]
    T -->|pass| R[Ready for next change]
    T -->|fail| F[Fix before drift grows]
    F --> M
```

[^fowler-ci]: Martin Fowler, [Continuous Integration](https://martinfowler.com/articles/continuousIntegration.html).
[^github-ci]: GitHub, [Continuous integration](https://docs.github.com/en/actions/get-started/continuous-integration).
