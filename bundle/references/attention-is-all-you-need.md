---
type: Research Paper
title: Attention Is All You Need
description: NeurIPS 2017 paper introducing the Transformer architecture based on attention rather than recurrence or convolution.
resource: https://arxiv.org/abs/1706.03762
tags: [artificial-intelligence, machine-learning, language-models, transformers, attention, research-paper]
subject:
  - ontology: prov-o
    class: http://www.w3.org/ns/prov#Entity
    label: Entity
status: stable
generated: { by: "codex/gpt-5.6", at: "2026-08-29T00:00:00-07:00" }
sources:
  - id: transformer-paper
    resource: https://arxiv.org/abs/1706.03762
    title: Attention Is All You Need
    author: "vaswani-et-al/2017"
  - id: transformer-neurips-record
    resource: https://proceedings.neurips.cc/paper_files/paper/2017/hash/3f5ee243547dee91fbd053c1c4a845aa-Abstract.html
    title: NeurIPS 2017 publication record for Attention Is All You Need
    author: "neurips/2017"
---

# Publication

Ashish Vaswani, Noam Shazeer, Niki Parmar, Jakob Uszkoreit, Llion Jones,
Aidan N. Gomez, Lukasz Kaiser, and Illia Polosukhin published this paper in
*Advances in Neural Information Processing Systems 30* (NeurIPS 2017).[^transformer-neurips-record]

# Contribution

The paper introduces the Transformer, a sequence-transduction architecture
based on attention mechanisms rather than recurrence or convolution. Its
attention-based design supports more parallel computation during training and
was evaluated on machine translation and constituency parsing tasks.[^transformer-paper]

The paper provides the architectural foundation explained in the [Transformer attention architecture](../artificial-intelligence/transformer-attention-architecture.md)
concept and referenced by [large language models](../artificial-intelligence/large-language-models.md). It does not by
itself define a large language model, guarantee generated-output quality, or
establish that every later Transformer use has the same training procedure.

[^transformer-paper]: Vaswani et al., [Attention Is All You Need](https://arxiv.org/abs/1706.03762).
[^transformer-neurips-record]: [NeurIPS 2017 publication record for Attention Is All You Need](https://proceedings.neurips.cc/paper_files/paper/2017/hash/3f5ee243547dee91fbd053c1c4a845aa-Abstract.html).
