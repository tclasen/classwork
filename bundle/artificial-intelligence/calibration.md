---
type: Evaluation Concept
title: Model calibration
description: Assessing whether a model's confidence values correspond to observed outcome frequencies for a defined population and event.
tags: [artificial-intelligence, machine-learning, evaluation, metrics, calibration, uncertainty]
subject:
  - ontology: mls-1.0
    class: http://www.w3.org/ns/mls#ModelEvaluation
    label: Model Evaluation
status: stable
generated: { by: "codex/gpt-5.6", at: "2026-08-31T16:00:00-07:00" }
sources:
  - id: google-ml-metrics
    resource: https://developers.google.com/machine-learning/glossary/metrics
    title: "Google Machine Learning Glossary: Metrics"
    author: "google/developers"
---

# Confidence versus frequency

**Model calibration** asks whether predicted confidence agrees with observed
frequencies for a stated event, population, and time window. If cases assigned
confidence near $0.8$ are correct about $80\%$ of the time under those
conditions, the confidence is calibrated for that slice. Calibration is a
property of predictions in context, not a general guarantee that an individual
prediction will occur.[^google-ml-metrics]

Calibration is distinct from discrimination. A model can rank positive cases
above negative cases while its confidence values are consistently too high or
too low. A [prediction task and model metric](prediction-tasks-and-model-metrics.md)
therefore needs a target definition, evaluation population, and outcome window
before a calibration result has meaning. [Generalization and model evaluation](generalization-and-model-evaluation.md)
provides the held-out-data and operating-condition context for checking whether
that result transfers.

Calibration can change after deployment when the input population, base rates,
measurement process, or decision context changes. [Distribution shift](distribution-shift.md)
is consequently a reason to monitor and reassess calibration rather than reuse
an old score as if it were timeless.

[^google-ml-metrics]: Google for Developers, [Machine Learning Glossary: Metrics](https://developers.google.com/machine-learning/glossary/metrics).
