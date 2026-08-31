---
type: Technical Concept
title: Neural networks
description: Parameterized computational models that compose layers of functions to transform inputs into task-relevant outputs.
tags: [artificial-intelligence, machine-learning, neural-networks, model-training]
subject:
  - ontology: mls-1.0
    class: http://www.w3.org/ns/mls#Model
    label: Model
status: stable
generated: { by: "codex/gpt-5.6", at: "2026-08-31T16:00:00-07:00" }
sources:
  - id: google-neural-networks
    resource: https://developers.google.com/machine-learning/crash-course/neural-networks
    title: Google for Developers, Neural networks
    author: "google/developers"
---

# Composed learned functions

A **neural network** is a parameterized model that composes functions in layers.
Each layer transforms a representation, often through a weighted operation and
a nonlinear activation, and the learned parameters determine the resulting
mapping from inputs to outputs. The name describes a computational model, not a
claim that the model is a biological brain or that its internal features are
automatically interpretable.[^google-neural-networks]

During training, a forward pass produces an output and an objective measures
the result. [Gradients and backpropagation](gradients-and-backpropagation.md)
computes how that objective changes with the parameters, while [optimization and
parameter updates](optimization-and-parameter-updates.md) uses that information
to change them. Applying the trained network is [model inference](model-inference.md).

Neural networks vary in architecture. A [Transformer attention architecture](transformer-attention-architecture.md)
is one sequence-model family; its attention and feed-forward layers are parts
of a neural network rather than an alternative to the general idea. A network's
successful fit is not sufficient evidence of [generalization and model evaluation](generalization-and-model-evaluation.md)
under new data or operating conditions.

[^google-neural-networks]: Google for Developers, [Neural networks](https://developers.google.com/machine-learning/crash-course/neural-networks).
