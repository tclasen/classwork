---
type: Foundational Concept
title: Actions, policies, and permissions
description: Deliberate changes and rules about which agents may perform them.
tags: [foundations, actions, policies, permissions, authorization]
subject:
  - ontology: prov-o
    class: http://www.w3.org/ns/prov#Activity
    label: Activity
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

# What may be done

An **action** is an intentional or operational activity directed at a target,
such as reading a record, changing a configuration, transferring custody, or
running a program. A **policy** is a rule or set of rules that evaluates
conditions and prescribes, permits, requires, or forbids behavior. A
**permission** is an allowed action for a specified agent, target, context,
and duration. Permission is narrower than capability: a system may technically
allow an action that policy does not authorize.

This distinction also bounds a learned policy: the
[reinforcement-learning feedback loop](../artificial-intelligence/reinforcement-learning-feedback-loop.md)
may propose an action from experience, but authorization must still be checked
before that action is executed.

To evaluate an access decision, identify the agent, action, target, relevant
context, applicable policy, and enforcement point.[^nist-zero-trust] This distinction is the
foundation for [digital identity and authorization](../cybersecurity/digital-identity-and-authorization.md)
and for recording who could perform an activity in [moral agency and responsibility](../ethics/moral-agency-and-responsibility.md). An [AI agent](../artificial-intelligence/agents.md)
must be constrained by these same authorization boundaries; producing a plan
does not itself grant permission to execute it.

[^nist-zero-trust]: NIST, [NIST SP 800-207 Zero Trust Architecture](https://doi.org/10.6028/NIST.SP.800-207).
