---
type: Research Paper
title: "ReAct: Synergizing Reasoning and Acting in Language Models"
description: ICLR 2023 paper proposing interleaved language-model reasoning and task-specific actions for interactive problem solving.
resource: https://arxiv.org/abs/2210.03629
tags: [artificial-intelligence, agents, language-models, reasoning, acting, research-paper]
subject:
  - ontology: obi-2026-07-27
    class: http://purl.obolibrary.org/obo/OBI_0000218
    label: Investigation results report
status: stable
generated: { by: "codex/gpt-5.6", at: "2026-09-01T11:11:00-07:00" }
sources:
  - id: react-paper
    resource: https://arxiv.org/abs/2210.03629
    title: "ReAct: Synergizing Reasoning and Acting in Language Models"
    publisher: arxiv
    publication_context: "arXiv:2210.03629; version 3"
    license_note: "Creative Commons Attribution 4.0 International"
  - id: react-iclr-record
    resource: https://openreview.net/forum?id=WE_vluYUL-X
    title: ICLR 2023 publication record for ReAct
    publisher: ICLR
    publication_context: "International Conference on Learning Representations (ICLR 2023)"
---

# Publication

Shunyu Yao, Jeffrey Zhao, Dian Yu, Nan Du, Izhak Shafran, Karthik R.
Narasimhan, and Yuan Cao published this paper at the International Conference
on Learning Representations (ICLR) in 2023.[^react-iclr-record]

# Contribution

ReAct describes a prompting and agent-design pattern that interleaves verbal
reasoning traces with task-specific actions. Reasoning can maintain and revise
a plan, while actions can retrieve observations from an external knowledge
source or environment. The paper evaluates this pattern on question
answering, fact verification, and interactive decision-making tasks.[^react-paper]

The paper supports the [agents](../artificial-intelligence/agents.md) concept
and the more specific [agent control loops and tool use](../artificial-intelligence/agent-control-loops-and-tool-use.md)
concept:
an agent is not only a language model, but also an objective, environment,
action interface, and controls. ReAct is one design pattern within that larger
system boundary, not a guarantee of safe or reliable autonomy.

[^react-paper]: Yao et al., [ReAct: Synergizing Reasoning and Acting in Language Models](https://arxiv.org/abs/2210.03629).
[^react-iclr-record]: [ICLR 2023 publication record for ReAct](https://openreview.net/forum?id=WE_vluYUL-X).
