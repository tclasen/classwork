# AI Education and Knowledge Graph Template

This domain-neutral repository supports AI-assisted learning and an
evidence-based knowledge graph under the repository-pinned
[Open Knowledge Format (OKF) v0.2 specification](./.okf/SPEC.md), keeping its
concepts, relationships, sources, and navigation portable and reviewable.

It supports two complementary activities:

- **AI-driven education:** explain material, identify prerequisite gaps, create
  adaptive lessons, and guide exercises.
- **Knowledge graph synthesis:** research, create, connect, reconcile, and
  validate canonical concepts from trustworthy sources.

The template prescribes no subject, curriculum, learner level, or source type;
define them when adapting it.

## Repository model

After initialization, `bundle/` is the complete OKF bundle and concept
namespace; everything outside it supports the repository.

| Path | Purpose |
| --- | --- |
| `.okf/SPEC.md` | Pinned OKF specification |
| `AGENTS.md` | Durable teaching and graph-synthesis instructions |
| `bundle/` | Canonical concepts, indexes, logs, and source artifacts |
| `bundle/index.md` | OKF version declaration and top-level map |
| `lesson-plans/` | Local learner-specific plans outside the bundle |

If `bundle/` or `lesson-plans/` is absent, the first graph or lesson request may
initialize it according to [the agent instructions](./AGENTS.md).

## Adapt and use

Before building a substantial graph, replace the generic title and define the
domain or program, scope and exclusions, learner audiences, source standards,
review roles, publication process, and verified setup or validation commands.
Keep workflow rules in `AGENTS.md`; keep this README about what the repository
teaches and how people use it.

Open the root as an Obsidian vault to browse indexes, links, and backlinks, or
with an AI coding or research agent to learn from or extend the bundle. No
special command syntax is required. Include the subject, goal, current
understanding, source constraints, and available time when relevant. Shared
knowledge belongs in `bundle/`; learner-specific plans belong in
`lesson-plans/` as Obsidian-friendly Markdown.

Validate the bundle and its pinned ontology classifications with:

```sh
ruby scripts/validate_bundle.rb
```

Review committed changes with `git show --stat` and `git show`. Configure Git
LFS only for relevant large-file paths before adding them, and do not copy
storage or publication commands until the repository provides those
facilities.

## Example prompts

- **Initialize:** `Initialize the knowledge graph for [subject], aimed at [learner audience].`
- **Lesson plan:** `Create a [duration] lesson plan that helps me learn [topic] from my current level.`
- **Explain:** `Explain [concept] using the bundle's prerequisites and give me a short check for understanding.`
- **Synthesize:** `Expand the graph to cover [topic], using authoritative sources and connecting it to existing concepts.`
- **Integrate a source:** `Incorporate useful knowledge from [citation, DOI, or URL] into the graph.`
