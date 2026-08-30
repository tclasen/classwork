---
type: Software Engineering Practice
title: Version control and small reversible changes
description: Using shared revision history and focused changes to make software work understandable, reviewable, and recoverable.
tags: [software-engineering, version-control, change-management, collaboration, rollback]
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
  - id: google-small-cls
    resource: https://google.github.io/eng-practices/review/developer/small-cls.html
    title: Google Engineering Practices, Small CLs
    author: "google/eng-practices"
  - id: github-writing-code
    resource: https://docs.github.com/en/pull-requests/concepts/writing-code-for-a-project
    title: GitHub Docs, Writing code for a project
    author: "github/docs"
  - id: aws-small-reversible
    resource: https://docs.aws.amazon.com/wellarchitected/latest/operational-excellence-pillar/design-for-operations.html
    title: AWS Well-Architected Framework, Design for operations
    author: "aws/well-architected"
---

# Keep history legible

Track source, configuration, infrastructure, and documentation in a shared
revision-control system. A commit should describe a coherent change and leave
the repository in a usable state. Clear history supports review, rollback,
blameless investigation, release reconstruction, and [information provenance and trust](../information-systems/information-provenance-and-trust.md).

Prefer one self-contained change over a large batch of unrelated work. Google
Engineering Practices reports that small changes are easier to review, less
likely to introduce defects, easier to merge, and simpler to roll back.[^google-small-cls]
Split refactoring, formatting, feature work, and configuration changes when
doing so makes intent and recovery clearer. Keep the tests that explain a
behavioral change with the change itself.

# Make change safe to reverse

Design deployments and data migrations so that a bad change can be detected
and reversed or contained.[^aws-small-reversible] A reversible change may use a rollback, feature
flag, compatibility window, progressive rollout, or forward fix; the right
mechanism depends on state and failure mode. Version control does not make a
change reversible if external side effects or irreversible data mutations are
left unplanned.

Branches and pull requests provide isolation and discussion, while commits
provide durable snapshots.[^github-writing-code] Automated checks should run before integration, and
the repository should record enough context to reproduce what was reviewed.
This practice is the change-management foundation for code review, continuous
integration, and safe continuous delivery.

[^google-small-cls]: Google, [Small CLs](https://google.github.io/eng-practices/review/developer/small-cls.html).
[^github-writing-code]: GitHub Docs, Writing code for a project.
[^aws-small-reversible]: AWS Well-Architected Framework, Design for operations.
