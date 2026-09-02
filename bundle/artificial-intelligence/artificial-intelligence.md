---
type: Domain Concept
title: Artificial intelligence
description: Systems that produce recommendations, predictions, decisions, or other outputs that influence an environment toward objectives.
tags: [artificial-intelligence, AI, systems, models, decision-making]
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
  - id: oecd-ai-definition
    resource: https://oecd.ai/en/ai-publications/explanatory-memorandum-on-the-updated-oecd-definition-of-an-ai-system
    title: OECD explanatory memorandum on the updated definition of an AI system
    author: "oecd/ai"
    last_modified: 2024-03-05
---

# Definition and scope

**Artificial intelligence (AI)** is the field and family of engineered systems
that use computational procedures to produce outputs—such as predictions,
recommendations, generated content, or decisions—that can influence an
environment toward specified or implicit objectives. This is a systems-level
description: AI does not require human-like consciousness, and an AI system
may be narrow, probabilistic, adaptive, or partly rule-based.[^oecd-ai-definition]

AI is an umbrella, not a single technique. [Machine learning](machine-learning.md)
learns model behavior from data, while other AI systems may use explicitly
written rules, search, planning, optimization, or combinations of methods.
[Large language models](large-language-models.md) are one machine-learning
model family, and [agents](agents.md) are systems organized around selecting
and carrying out actions in an environment.

# System boundary and evaluation

An AI system includes more than a model: its data, objective, interface,
runtime, users, operators, and surrounding environment can all affect its
behavior. Use [systems, processes, and boundaries](../foundations/systems-processes-and-boundaries.md)
to state what is inside the system and what remains external. Use [semantics and models](../foundations/semantics-and-models.md) to distinguish a model's
representation from the world it represents, and [claims, evidence, and inference](../foundations/claims-evidence-and-inference.md) to separate an
output from a justified conclusion about its correctness.

AI outputs should be evaluated for the task, context, uncertainty, failure
modes, and consequences that matter. [Information provenance and trust](../information-systems/information-provenance-and-trust.md)
helps trace inputs and transformations; [assurance cases](../assurance/assurance-case.md)
help organize bounded claims and evidence; and [actions, policies, and permissions](../foundations/actions-policies-and-permissions.md) constrain
what an AI-enabled system may do.

[^oecd-ai-definition]: OECD, [Explanatory memorandum on the updated OECD definition of an AI system](https://oecd.ai/en/ai-publications/explanatory-memorandum-on-the-updated-oecd-definition-of-an-ai-system).
