---
type: Science Concept
title: Probability and statistical inference
description: Representing variation and using samples to reason about uncertain conclusions.
tags: [science, probability, statistics, uncertainty, inference]
subject:
  - ontology: ontomathpro-v2-acb3eef1
    class: http://ontomathpro.org/omp2#E21
    label: Probability theory and mathematical statistics
status: stable
generated: { by: "codex/gpt-5.6", at: "2026-09-02T09:31:52-07:00" }
sources:
  - id: nist-confidence-intervals
    resource: https://www.itl.nist.gov/div898/handbook/prc/section1/prc14.htm
    title: "NIST/SEMATECH e-Handbook: What are confidence intervals?"
  - id: nist-quantitative-techniques
    resource: https://www.itl.nist.gov/div898/handbook/eda/section3/eda35.htm
    title: "NIST/SEMATECH e-Handbook: Quantitative Techniques"
  - id: asa-p-values
    resource: https://www.amstat.org/asa/files/pdfs/p-valuestatement.pdf
    title: "American Statistical Association Releases Statement on Statistical Significance and P-Values"
    author: "american-statistical-association/2016"
---

# Variation and samples

**Probability** represents [uncertainty](../foundations/measurement-and-uncertainty.md) about possible outcomes under a stated
[model](models-and-causality.md). A **random variable** maps possible outcomes
to values, and a **distribution** describes the probabilities of those values.
A **sample** is the observed subset drawn from a population or process of
interest; the population is the full set of units or outcomes of interest. A
**statistic** is a value calculated from a sample, while an **estimate** is a
statistic used to approximate a target quantity. A **parameter** is a fixed
numerical feature of a population or process, usually unknown and estimated
from a sample.

# Intervals, tests, and importance

A **confidence interval** is a range constructed from a sample to express
uncertainty about a target quantity. Under its stated repeated-sampling
procedure—the hypothetical process of repeatedly drawing comparable samples
and applying the same interval method—a 95% interval method covers the true
parameter in about 95% of such samples; it does not assign a 95% probability
to the fixed parameter being inside one already calculated interval.[^nist-confidence-intervals]

A **hypothesis test** evaluates how compatible the data are with a specified
[model](models-and-causality.md) and **null hypothesis**, a specific baseline
claim about the population or process (for example, no difference). The
**p-value** is the probability, under that null model and sampling procedure,
of data at least as incompatible with the null as those observed; **statistical
significance** means that the observed result crosses a predeclared
**significance level**, the cutoff p-value below which the null is rejected.[^asa-p-values] Failure to reject is not proof
that the null hypothesis is true.[^nist-quantitative-techniques] A p-value or
significance label does not measure an **effect size**—the estimated magnitude of a
comparison in relevant units—or **practical importance**—whether that size
and its uncertainty matter for the decision's benefits, harms, or costs.[^asa-p-values]

For example, an estimated treatment difference of 2 points with a 95%
confidence interval of 0.5 to 3.5 points and $p = 0.01$ is [evidence](../foundations/claims-evidence-and-inference.md) against a
zero-difference null model under the stated analysis. The effect size is 2
points; deciding whether even the interval's plausible values are important
still requires the study context, not the p-value alone.

An interval or test result is conditional evidence, not a guarantee. Its
interpretation depends on the sampling process—the way observations are
selected from a population—the model, assumptions, analysis choices, and
question. [Observation, measurement, and study design](observation-measurement-and-study-design.md) supplies the data
collection path; [evidence and scientific claims](evidence-and-scientific-claims.md)
supplies the broader limits on inference.

These distinctions also apply when a language model assigns probabilities to
possible continuations. [Language-model decoding](../artificial-intelligence/language-model-decoding.md)
uses those model-relative estimates to select generated tokens, but a likely
continuation is not thereby a true or independently supported claim.

[^nist-confidence-intervals]: NIST/SEMATECH, [What are confidence intervals?](https://www.itl.nist.gov/div898/handbook/prc/section1/prc14.htm).
[^nist-quantitative-techniques]: NIST/SEMATECH, [Quantitative Techniques](https://www.itl.nist.gov/div898/handbook/eda/section3/eda35.htm).
[^asa-p-values]: American Statistical Association, [Statement on Statistical Significance and P-Values](https://www.amstat.org/asa/files/pdfs/p-valuestatement.pdf).
