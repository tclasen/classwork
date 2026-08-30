---
type: Software Engineering Practice
title: Automated testing and test strategy
description: Choosing layered, maintainable tests that provide timely evidence about software behavior and risk.
tags: [software-engineering, testing, quality, verification, automation]
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
  - id: google-testing-enough
    resource: https://testing.googleblog.com/2021/06/how-much-testing-is-enough.html
    title: Google Testing Blog, How Much Testing is Enough?
    author: "google/testing-blog"
  - id: google-good-test
    resource: https://testing.googleblog.com/2014/03/testing-on-toilet-what-makes-good-test.html
    title: Google Testing Blog, What Makes a Good Test?
    author: "google/testing-blog"
  - id: istqb-ctfl-4
    resource: https://istqb.org/wp-content/uploads/2024/11/ISTQB_CTFL_Syllabus_v4.0.1.pdf
    title: ISTQB Certified Tester Foundation Level Syllabus v4.0.1
    author: "istqb/ctfl-4.0.1"
---

# Test the risks that matter

A test is an executable question about system behavior. A test strategy
selects evidence appropriate to the product's users, failure modes, change
rate, and consequences; there is no universal coverage percentage or test
suite size. Google’s testing guidance recommends documenting the strategy,
building a solid unit-test base, adding integration tests, and using
end-to-end tests for critical user journeys.[^google-testing-enough]

Use a layered portfolio: fast unit tests for local logic, integration tests
for real boundaries and contracts, end-to-end tests for critical workflows,
and targeted performance, security, accessibility, compatibility, or recovery
tests where the risk warrants them. Test both expected behavior and important
failure modes. Prefer deterministic, isolated tests with clear names and
useful assertions.

# Keep tests trustworthy

Tests are maintained software, not infallible truth. A good test is clear,
concise, independent where practical, and coupled to observable behavior
rather than incidental implementation details.[^google-good-test] Ensure that
a broken implementation would make the test fail; review tests for false
positives, flaky timing, unexamined fixtures, and untested environments. Use
coverage as a signal to find gaps, not as a substitute for reasoning about
risk.

Run the appropriate fast checks with each change and reserve slower suites for
the stages where their feedback is still useful. Relate test results to [requirements engineering and acceptance](requirements-engineering-and-acceptance.md),
and make them available to [code review](code-review.md) and continuous
integration.

[^google-testing-enough]: Google, [How Much Testing is Enough?](https://testing.googleblog.com/2021/06/how-much-testing-is-enough.html).
[^google-good-test]: Google, [What Makes a Good Test?](https://testing.googleblog.com/2014/03/testing-on-toilet-what-makes-good-test.html).
