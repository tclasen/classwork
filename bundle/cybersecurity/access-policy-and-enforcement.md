---
type: Cybersecurity Concept
title: Access policy and enforcement
description: Evaluating contextual rules and enforcing decisions about operations on resources.
tags: [cybersecurity, access-control, policy, permissions, enforcement]
subject:
  - ontology: odrl-2.2
    class: http://www.w3.org/ns/odrl/2/Policy
    label: Policy
  - ontology: odrl-2.2
    class: http://www.w3.org/ns/odrl/2/Permission
    label: Permission
status: stable
generated: { by: "codex/gpt-5.6", at: "2026-08-29T00:00:00-07:00" }
sources:
  - id: nist-zero-trust
    resource: https://doi.org/10.6028/NIST.SP.800-207
    title: NIST SP 800-207 Zero Trust Architecture
    author: "nist/SP-800-207"
    last_modified: 2020-08-11
---

# Policy decision and enforcement

An access policy evaluates a subject, requested action, target resource, and
context against rules. A **permission** is an allowed operation in that stated
scope; a **decision** is the result, such as permit or deny; and **enforcement**
applies the result at the resource boundary. The decision and enforcement
points may be separate, but the resource must receive enough context to apply
the intended scope and lifetime.

Least privilege limits access to what is needed. Separation of duties prevents
one role from controlling incompatible steps when that separation reduces risk.
Policy evaluation is not authentication: it consumes an identity result and
additional context. [Actions, policies, and permissions](../foundations/actions-policies-and-permissions.md)
defines the general vocabulary; [identity binding and authentication](identity-binding-and-authentication.md)
defines the identity input.

[^nist-zero-trust]: NIST, [SP 800-207 Zero Trust Architecture](https://doi.org/10.6028/NIST.SP.800-207).
