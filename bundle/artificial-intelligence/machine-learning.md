---
type: Technical Concept
title: Machine learning
description: Training models from data so they can produce useful predictions or generated outputs on new inputs.
tags: [artificial-intelligence, machine-learning, ML, data, models, training]
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
  - id: google-what-is-ml
    resource: https://developers.google.com/machine-learning/intro-to-ml/what-is-ml
    title: Google for Developers, What is Machine Learning?
    author: "google/developers"
---

# Learning from data

**Machine learning (ML)** is a way to train software, called a model, to
produce useful predictions or generated outputs from data. Training adjusts
the model's parameters or structure using examples and an objective; inference
applies the trained model to an input it did not necessarily see during
training.[^google-what-is-ml]

The central distinction is between the [model training](model-training.md)
activity and the trained model. Data, labels or feedback, a model family, a
loss or reward, and an optimization procedure participate in training. The
resulting model is a representation that maps inputs to outputs under an
operating context through [model inference](model-inference.md). Its
performance on held-out or newly encountered data is
evidence about generalization, not a guarantee of correctness.

# Main learning settings

* **Supervised learning** learns from examples paired with target labels.
* **Unsupervised learning** identifies structure in data without supplied target labels.
* **Reinforcement learning** updates behavior from interaction and feedback about outcomes.
* **Self-supervised learning** constructs training signals from the data itself; it is important in language-model pretraining.

ML is a major approach within [artificial intelligence](artificial-intelligence.md),
but AI is broader than ML. A model's quality depends on the data and task
definition, so [information, data, and records](../foundations/information-data-and-records.md),
[measurement and uncertainty](../foundations/measurement-and-uncertainty.md),
and [semantics and models](../foundations/semantics-and-models.md) are
prerequisites. [Large language models](large-language-models.md) are a
specialized ML application, while [agents](agents.md) may use ML models as
one component in a larger action loop.

[^google-what-is-ml]: Google for Developers, [What is Machine Learning?](https://developers.google.com/machine-learning/intro-to-ml/what-is-ml).
