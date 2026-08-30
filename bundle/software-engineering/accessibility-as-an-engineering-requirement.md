---
type: Software Engineering Practice
title: Accessibility as an engineering requirement
description: Designing, implementing, and testing software so people with diverse abilities can use it effectively.
tags: [software-engineering, accessibility, requirements, usability, testing]
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
  - id: wcag-22
    resource: https://www.w3.org/TR/WCAG22/
    title: W3C Web Content Accessibility Guidelines 2.2
    author: "w3c/wai"
---

# Make access part of quality

Accessibility is the degree to which people with diverse abilities can
perceive, understand, navigate, interact with, and contribute through a
software product. Treat it as a product requirement and quality attribute from
discovery through operation, not as a visual polish pass at the end. W3C’s
Web Content Accessibility Guidelines (WCAG) 2.2 provides testable success
criteria for accessible web content and supporting guidance for applying them.[^wcag-22]

Translate the needs of the intended audience into concrete acceptance
conditions: keyboard and alternative input, screen-reader semantics, focus and
navigation, text alternatives, captions and transcripts, color and contrast,
zoom and reflow, timing, error recovery, understandable language, and
compatibility with assistive technology as applicable. Do not assume that one
persona or automated scanner represents every user.

# Build evidence into the workflow

Use accessible components and platform semantics by default, manual checks
with assistive technologies, automated checks for repeatable criteria, and
tests with people who have relevant lived experience when feasible. Include
accessibility in [requirements engineering and acceptance](requirements-engineering-and-acceptance.md),
[automated testing and test strategy](automated-testing-and-test-strategy.md),
and [code review](code-review.md). Fix barriers at their source and retest
after changes; conformance claims apply only to the stated scope, technology,
content, and user context.

Accessibility guidance is especially explicit for web content, but the
engineering principle generalizes: identify affected users, define observable
criteria, use inclusive defaults, and verify real interaction paths.

[^wcag-22]: W3C, [Web Content Accessibility Guidelines 2.2](https://www.w3.org/TR/WCAG22/).
