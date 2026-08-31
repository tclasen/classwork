---
type: Evaluation Concept
title: Distribution shift
description: A change between the conditions represented by evaluation data and the conditions in which a model is used.
tags: [artificial-intelligence, machine-learning, evaluation, generalization, deployment, uncertainty]
subject:
  - ontology: prov-o
    class: http://www.w3.org/ns/prov#Entity
    label: Entity
  - ontology: prov-o
    class: http://www.w3.org/ns/prov#Activity
    label: Activity
status: stable
generated: { by: "codex/gpt-5.6", at: "2026-08-31T12:15:00-07:00" }
sources:
  - id: google-ml-glossary
    resource: https://developers.google.com/machine-learning/glossary
    title: Google Machine Learning Glossary
    author: "google/developers"
---

# When operating conditions change

**Distribution shift** occurs when the data, users, interfaces, target rates,
input-to-target relationship, or consequences encountered in operation differ
from those represented during training or evaluation. It is a relationship
between a model's reference conditions and a later context, not a single
failure mode or proof that performance has degraded.[^google-ml-glossary]

[Generalization and model evaluation](generalization-and-model-evaluation.md)
uses the concept to mark the boundary of a held-out performance claim. A model
can retain useful behavior under some shifts and fail under others, so monitoring
and re-evaluation need a defined task, population, outcome window, and evidence.
The [model calibration](calibration.md) of confidence values may also change
when base rates or the operating population changes.

The [AI system evaluation and risk management](ai-system-evaluation-and-risk-management.md)
concept treats distribution shift as a system-level evaluation condition because
deployment context can change the risks and consequences of model behavior.

At system level, shift can involve deployment controls, affected parties, and
downstream decisions, so [AI system evaluation and risk management](ai-system-evaluation-and-risk-management.md)
extends model-level checks to the surrounding context. A shift detector is itself
an imperfect measurement and should be interpreted with [measurement and uncertainty](../foundations/measurement-and-uncertainty.md).

[^google-ml-glossary]: Google for Developers, [Machine Learning Glossary](https://developers.google.com/machine-learning/glossary).
