---
type: Software Engineering Practice
title: Code review
description: Evaluating a focused software change for design, behavior, maintainability, risk, and codebase health before integration.
tags: [software-engineering, code-review, quality, collaboration, maintainability]
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
  - id: google-review-standard
    resource: https://google.github.io/eng-practices/review/reviewer/standard.html
    title: Google Engineering Practices, The Standard of Code Review
    author: "google/eng-practices"
  - id: google-review-looking
    resource: https://google.github.io/eng-practices/review/reviewer/looking-for.html
    title: Google Engineering Practices, What to look for in a code review
    author: "google/eng-practices"
  - id: google-review-comments
    resource: https://google.github.io/eng-practices/review/reviewer/comments.html
    title: Google Engineering Practices, How to write code review comments
    author: "google/eng-practices"
---

# Review the change in context

Code review is a deliberate inspection of a proposed change by someone other
than its author, often with automated checks as supporting evidence. Its goal
is not perfection or personal preference: approve changes that improve the
codebase's overall health while catching unacceptable risks. Google’s review
guidance emphasizes design, user-visible behavior, complexity, tests, naming,
comments, documentation, style, concurrency, and the surrounding system.[^google-review-looking]

Start with the change's purpose, scope, and design. Then inspect the important
paths, edge cases, failure behavior, security boundaries, data changes, and
tests. Review the complete focused change, not only the lines that look
interesting. A review is stronger when the author supplies context, acceptance
evidence, risk, rollout and rollback information, and unresolved questions.

# Make review a learning and control loop

Ground comments in technical facts, project conventions, requirements, and
evidence. Explain why a requested change matters, distinguish required fixes
from optional polish, and comment on the code rather than the person.[^google-review-comments]
Reviewers should resolve disagreements through shared reasoning and preserve
forward progress; the standard is continuous improvement, not an impossible
claim of flawless code.[^google-review-standard] Reviewing complexity and
unclear structure early also protects maintainability by keeping future changes
easier to understand and adapt, as explained in [maintainable code and refactoring](maintainable-code-and-refactoring.md).

Pair review with [version control and small reversible changes](version-control-and-small-reversible-changes.md)
and [requirements engineering and acceptance](requirements-engineering-and-acceptance.md).
Review alone cannot establish correctness when the requirement is unclear or
the behavior is not exercised in a representative environment.

[^google-review-standard]: Google, [The Standard of Code Review](https://google.github.io/eng-practices/review/reviewer/standard.html).
[^google-review-looking]: Google, [What to look for in a code review](https://google.github.io/eng-practices/review/reviewer/looking-for.html).
[^google-review-comments]: Google, [How to write code review comments](https://google.github.io/eng-practices/review/reviewer/comments.html).
