# AI Education and Knowledge Graph Template

This repository is a domain-neutral starting point for an AI-assisted learning
environment and an evidence-based knowledge graph. It uses the repository-pinned
[Open Knowledge Format (OKF) v0.2 specification](./.okf/SPEC.md) to keep concepts,
relationships, sources, and navigation portable and reviewable.

The template supports two complementary activities:

- **AI-driven education:** explain material, diagnose prerequisite gaps, create
  adaptive lessons, and guide learners through exercises.
- **Knowledge graph synthesis:** research, create, connect, reconcile, and
  validate canonical concepts from trustworthy sources.

The template does not prescribe a subject, curriculum, learner level, or source
type. Define those constraints when adapting it to a project.

## Repository model

Once initialized, everything beneath `bundle/` belongs to the OKF knowledge
bundle and its concept namespace. Files outside `bundle/` support the repository
but are not concepts.

| Path | Purpose |
| --- | --- |
| `.okf/SPEC.md` | Repository-pinned OKF specification |
| `AGENTS.md` | Durable instructions for teaching and graph synthesis |
| `bundle/` | Canonical concepts, indexes, logs, and source artifacts |
| `bundle/index.md` | Version declaration and top-level knowledge map |
| `lesson-plans/` | Local, learner-specific plans that remain outside the bundle |

This starter may be copied before `bundle/` and `lesson-plans/` exist. The first
knowledge-building or lesson-planning request can initialize the required
directories according to [the agent instructions](./AGENTS.md).

## Adapt the template

Before building a substantial graph, describe the project in this README:

1. Replace this generic title with the knowledge domain or learning program.
2. State the intended scope, exclusions, and primary learner audiences.
3. Record any required source standards, review roles, or publication process.
4. Add project-specific setup and validation commands only after they exist.

Keep workflow rules in `AGENTS.md`; keep this README focused on what the
particular repository teaches and how people use it.

## Use the repository

Open the repository root as an Obsidian vault to browse concept indexes, links,
and backlinks. Open the same root with an AI coding or research agent to learn
from the bundle or request a knowledge change. No special command syntax is
required. Include the subject, goal, current understanding, source constraints,
and time available whenever they affect the result.

Lesson plans are saved as local, Obsidian-friendly Markdown under
`lesson-plans/`. Canonical shared knowledge belongs under `bundle/` and follows
the pinned OKF specification.

Review committed knowledge changes with:

```sh
git show --stat
git show
```

If the project stores large source files, configure Git LFS for the relevant
paths before adding them. Do not copy template commands for storage, validation,
or publication until the repository actually provides those facilities.

## Example prompts

### Initialize a subject

```text
Initialize the knowledge graph for [subject], aimed at [learner audience].
```

### Build a lesson plan

```text
Create a [duration] lesson plan that helps me learn [topic] from my current level.
```

### Explain existing material

```text
Explain [concept] using the bundle's prerequisites and give me a short check for understanding.
```

### Synthesize knowledge

```text
Expand the graph to cover [topic], using authoritative sources and connecting it to existing concepts.
```

### Integrate a source

```text
Incorporate the useful knowledge from [citation, DOI, or URL] into the graph.
```
