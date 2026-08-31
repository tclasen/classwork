---
name: okf-lesson-plans
description: Create or revise personalized lesson plans grounded in this repository's OKF bundle. Use for saved learning routes, schedules, exercises, and checkpoints under lesson-plans/; do not treat plans as shared bundle concepts or commit them.
---

# OKF Lesson Plans

Produce a local learner artifact whose required material is fully taught inside
the bundle. Obey `AGENTS.md` and use `$okf-teaching` when explanation is needed
to establish the learner's goal or baseline.

## Create a plan

In an explicit maintenance or looping audit, inspect `lesson-plans/` only as a
boundary and grounding check: keep plans ignored and uncommitted, ensure their
links still resolve to adequately taught bundle concepts, and identify missing
shared material for `$okf-knowledge-synthesis`. Do not reorganize learner
routes into the shared graph.

1. Infer the learner's goal, available time, background, constraints, and
   desired outcome. Ask a concise question only if a missing detail would
   materially change the plan.
2. Read relevant indexes, concepts, prerequisites, and neighbors. Design a
   tailored sequence, pace, explanations, exercises, and checkpoints; do not
   impose that route on the shared graph.
3. Verify that the bundle teaches every prerequisite and all knowledge needed
   to complete each required lesson and exercise at the depth the plan expects.
4. When required material is missing, use `$okf-knowledge-synthesis` to add the
   complete explanatory closure, reconcile and validate the graph, and commit
   the shared knowledge change. Then finish or revise the plan to link to the
   completed material.
5. External material may supply provenance or optional further reading, but it
   cannot substitute for bundle explanations required by the plan.

Save the plan under `lesson-plans/` with a descriptive filename unless the user
provides one. Create the directory when needed. Keep lesson plans ignored and
uncommitted.

## Format the artifact

- Use portable, Obsidian-friendly Markdown with a clear title and useful
  heading hierarchy.
- Add contextual relative links to canonical bundle concepts.
- Use actionable checklists when they make practice or progress easier to
  follow.
- Do not add YAML frontmatter, OKF metadata, or bundle index entries. A lesson
  plan is not an OKF concept.
- Do not create a tracked `PLAN.md` or equivalent shared guide unless the user
  explicitly changes the repository policy.

## Revise an active plan

Update the existing file rather than creating a competing plan. If absent, add
`## Change Log` immediately after the title. Record concise ISO `YYYY-MM-DD`
entries newest first and apply the requested change throughout the plan, not
only in the log. Synthesize any newly required shared knowledge before treating
the revision as complete.
