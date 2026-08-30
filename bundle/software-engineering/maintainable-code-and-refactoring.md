---
type: Software Engineering Practice
title: Maintainable code and refactoring
description: Keeping software understandable and adaptable by controlling complexity and changing structure without changing intended behavior.
tags: [software-engineering, maintainability, refactoring, code-quality, complexity]
subject:
  - ontology: prov-o
    class: http://www.w3.org/ns/prov#Entity
    label: Entity
  - ontology: prov-o
    class: http://www.w3.org/ns/prov#Activity
    label: Activity
status: stable
generated: { by: "codex/gpt-5.6", at: "2026-08-29T00:00:00-07:00" }
sources:
  - id: google-review-looking
    resource: https://google.github.io/eng-practices/review/reviewer/looking-for.html
    title: Google Engineering Practices, What to look for in a code review
    author: "google/eng-practices"
  - id: google-go-guide
    resource: https://google.github.io/styleguide/go/guide.html
    title: Google Go Style Guide
    author: "google/styleguide"
  - id: fowler-refactoring
    resource: https://martinfowler.com/ieeeSoftware/beforeClarity.pdf
    title: "Martin Fowler, Refactoring: Improving the Design of Existing Code"
    author: "martin-fowler"
---

# Optimize for understanding

Maintainable code is easy enough for a future engineer to understand, verify,
change, and operate. Favor clear names, cohesive responsibilities, simple
control flow, explicit interfaces, useful error behavior, and consistency with
the codebase. Avoid speculative generality, hidden coupling, duplicated rules,
and complexity that cannot be justified by a real requirement. Code comments
should explain rationale, constraints, or non-obvious behavior; they should
not compensate for code that could be made clearer.[^google-go-guide]

Maintainability is not the same as a particular style, architecture, language,
or line-count target. The appropriate design depends on domain boundaries,
performance, security, team capability, and expected change. Make trade-offs
visible in review and revisit them when evidence changes.

# Refactor with behavioral evidence

Refactoring changes internal structure while preserving externally intended
behavior. Make small, purposeful transformations; keep the system working at
each step; and use tests, static analysis, review, and production evidence to
detect accidental behavior changes. Separate large refactorings from feature
work so reviewers can reason about each change. Google’s review guidance warns
against unnecessary complexity and recommends tests for changed behavior and
test code itself.[^google-review-looking]

Refactoring is a risk-managed investment, not an excuse to rewrite without
learning. Link it to a concrete maintenance, correctness, performance,
security, or delivery problem and measure whether the change helped. This
practice supports [code review](code-review.md), [automated testing and test strategy](automated-testing-and-test-strategy.md), and [version control and small reversible changes](version-control-and-small-reversible-changes.md).

[^google-review-looking]: Google, [What to look for in a code review](https://google.github.io/eng-practices/review/reviewer/looking-for.html).
[^google-go-guide]: Google, [Go Style Guide](https://google.github.io/styleguide/go/guide.html).
