---
type: Science Concept
title: Probability and statistical inference
description: Representing variation and using samples to reason about uncertain conclusions.
tags: [science, probability, statistics, uncertainty, inference]
subject:
  - ontology: obi-2026-07-27
    class: http://purl.obolibrary.org/obo/OBI_0000673
    label: Statistical hypothesis test
status: stable
generated: { by: "codex/gpt-5.6", at: "2026-08-31T16:00:00-07:00" }
---

# Variation and samples

**Probability** represents uncertainty about possible outcomes under a stated
model. A **random variable** maps possible outcomes to values, and a
**distribution** describes how those values vary. A **sample** is the observed
subset used to learn about a population or process; a statistic summarizes a
sample, while an estimate uses it to say something about a target quantity.

An interval or test result is conditional evidence, not a guarantee. Its
interpretation depends on the sampling process, model, assumptions, analysis
choices, and question. **Statistical significance** is not the same as effect
size, practical importance, or truth. [Observation, measurement, and study design](observation-measurement-and-study-design.md) supplies the data
collection path; [evidence and scientific claims](evidence-and-scientific-claims.md)
supplies the broader limits on inference.

These distinctions also apply when a language model assigns probabilities to
possible continuations. [Language-model decoding](../artificial-intelligence/language-model-decoding.md)
uses those model-relative estimates to select generated tokens, but a likely
continuation is not thereby a true or independently supported claim.
