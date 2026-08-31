---
type: Optimization Concept
title: Gradient descent
description: An iterative optimization method that changes parameters in the direction that locally decreases a differentiable objective.
tags: [artificial-intelligence, machine-learning, optimization, gradients, training]
subject:
  - ontology: mls-1.0
    class: http://www.w3.org/ns/mls#Algorithm
    label: Algorithm
status: stable
generated: { by: "codex/gpt-5.6", at: "2026-08-31T17:00:00-07:00" }
sources:
  - id: google-backpropagation
    resource: https://developers.google.com/machine-learning/crash-course/neural-networks/backpropagation
    title: "Google for Developers, Neural Networks: Training using backpropagation"
    author: "google/developers"
---

# Local objective improvement

**Gradient descent** is an iterative method for minimizing a differentiable
objective. At the current parameter values, it computes the gradient and takes
a step in the opposite direction. In a simple update,

$$
w_{new}=w_{old}-\eta\nabla_w L
$$

where $L$ is the loss and $\eta$ is the step size. The gradient describes local
sensitivity; it does not guarantee a global minimum or reliable performance on
new data.[^google-backpropagation]

[Gradients and backpropagation](gradients-and-backpropagation.md) supplies the
sensitivity for a neural network's computation, while [optimization and
parameter updates](optimization-and-parameter-updates.md) places gradient
descent among procedures that use training signals to change model parameters.
The [model training](model-training.md) activity may use batches, regularization,
stopping rules, or an optimizer with additional state, so gradient descent is a
method family rather than a complete training specification.

[^google-backpropagation]: Google for Developers, [Neural Networks: Training using backpropagation](https://developers.google.com/machine-learning/crash-course/neural-networks/backpropagation).
