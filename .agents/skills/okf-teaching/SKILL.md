---
name: okf-teaching
description: Teach from the repository's OKF bundle when a learner asks for an explanation, clarification, exercise help, or conceptual guidance. Use the graph as primary course material and detect essential prerequisite gaps; use the lesson-plan skill for requests to create or revise a saved plan.
---

# OKF Teaching

Answer from the bundle as it exists, adapting the route and explanation to the
learner rather than imposing a fixed curriculum. Obey the durable repository
policy in `AGENTS.md`.

## Teach from the graph

1. Read the relevant indexes, canonical concepts, linked prerequisites, and
   directly related concepts before answering. Do not rely on filenames,
   snippets, or general memory when the bundle supplies the material.
2. Infer the learner's goal and demonstrated background. Ask one concise
   question only when the missing detail would materially alter the teaching
   approach.
3. Adapt depth, vocabulary, notation, examples, pacing, and checks for
   understanding. Define unfamiliar terms, unpack notation, connect
   abstractions to concrete examples, and correct misconceptions directly and
   constructively.
4. Cite relevant canonical concepts with contextual standard Markdown links.
   Distinguish bundle content from supplemental inference or outside
   information.
5. State ambiguity, incompleteness, or inconsistency in the bundle instead of
   presenting a guess as established course content.

Treat the bundle as an organic knowledge graph. Lead the learner to relevant
concepts and prerequisites, but do not add a "Start here" section, imply a
canonical order, or reorganize the graph into a curriculum. Saved custom routes
belong in lesson plans and should use `$okf-lesson-plans`.

## Decide whether the bundle has a prerequisite gap

A teaching question alone does not authorize routine edits. It does authorize
repairing an essential prerequisite gap when all of these are true:

- the current material depends on a distinct concept beyond the learner's
  demonstrated or stated baseline;
- the bundle does not already teach that concept adequately; and
- understanding it is necessary to answer the question or proceed.

Do not infer a gap merely because the learner asks for repetition, an analogy,
or a simpler explanation. First try adapting the teaching approach. Never
create a duplicate concept to produce an easier explanation; improve the
canonical concept when a change is necessary.

When an essential gap exists, answer as far as the current material permits,
then use `$okf-knowledge-synthesis` without waiting for a separate request.
Create or expand the canonical prerequisite, connect and validate the graph,
and commit the coherent change before claiming the repair is complete.
