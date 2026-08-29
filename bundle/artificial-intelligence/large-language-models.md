---
type: Technical Concept
title: Large language models
description: Machine-learning models trained on large text corpora to estimate and generate sequences of language tokens.
tags: [artificial-intelligence, machine-learning, language, LLM, generative-ai]
subject:
  - ontology: prov-o
    class: http://www.w3.org/ns/prov#Entity
    label: Entity
status: stable
generated: { by: "codex/gpt-5.6", at: "2026-08-29T00:00:00-07:00" }
sources:
  - id: google-ml-glossary
    resource: https://developers.google.com/machine-learning/glossary
    title: Google Machine Learning Glossary
    author: "google/developers"
  - id: transformer-paper
    resource: https://arxiv.org/abs/1706.03762
    title: Attention Is All You Need
    author: "vaswani-et-al/2017"
    last_modified: 2017-06-12
---

# What an LLM is

A **large language model (LLM)** is a machine-learning model with many learned
parameters trained on large collections of text or text-like sequences. It
represents patterns in language and, given a context, estimates a distribution
over possible next tokens. Generation repeatedly selects tokens from those
conditional estimates until a stopping condition is reached.[^google-ml-glossary]

The word *large* is relative to the model family and task; it does not by
itself establish accuracy, knowledge, reasoning, or consciousness. A model can
produce fluent text while being wrong, uncertain, biased by its data, or
sensitive to wording. Treat an output as a generated [information, data, and
record](../foundations/information-data-and-records.md), then check its
provenance and supporting [claims, evidence, and inference](../foundations/claims-evidence-and-inference.md).

# Training and architecture

Many modern LLMs use the Transformer architecture, which applies attention to
relate positions in a sequence and supports parallel training; the original
Transformer paper introduced an architecture based solely on attention rather
than recurrence or convolution.[^transformer-paper] Common stages include
pretraining on broad text, followed by optional instruction tuning,
fine-tuning, or preference optimization. These stages change behavior but do
not remove the need for evaluation in the deployment context.

LLMs are a specialized family within [machine learning](machine-learning.md)
and one possible component of [AI agents](agents.md). An LLM by itself maps
contexts to generated outputs; it does not automatically have tools, durable
memory, authority, or a reliable goal-management loop.

[^google-ml-glossary]: Google for Developers, [Machine Learning Glossary](https://developers.google.com/machine-learning/glossary).
[^transformer-paper]: Vaswani et al., [Attention Is All You Need](https://arxiv.org/abs/1706.03762).
