# Classwork knowledge graph

This repository supports AI-assisted learning through a connected knowledge
graph covering software engineering, artificial intelligence, reasoning,
assurance, and their foundations. It uses the repository-pinned
[Open Knowledge Format (OKF) v0.2 specification](./.okf/SPEC.md), keeping its
concepts, relationships, sources, and navigation portable and reviewable.

It supports two complementary activities:

- **AI-driven education:** explain material, identify prerequisite gaps, create
  adaptive lessons, and guide exercises.
- **Knowledge graph synthesis:** research, create, connect, reconcile, and
  validate canonical concepts from trustworthy sources.

Browse the [knowledge bundle](bundle/index.md) for the current subject map.
The graph includes canonical concepts and source references; it does not prescribe
a curriculum or learner level.

## Repository model

`bundle/` is the complete OKF bundle and concept
namespace; everything outside it supports the repository.

| Path | Purpose |
| --- | --- |
| `.okf/SPEC.md` | Pinned OKF specification |
| `AGENTS.md` | Agent entry point loading the complete operating contract and OKF procedures |
| `bundle/` | Canonical concepts, indexes, logs, and source artifacts |
| `bundle/index.md` | OKF version declaration and top-level map |
| `lesson-plans/` | Local learner-specific plans outside the bundle |

The knowledge bundle is initialized. Learner-specific lesson plans may be created
locally under `lesson-plans/`; that directory is ignored by Git.

## Browse and learn

Use the [software engineering map](bundle/software-engineering/index.md) for
requirements, delivery, operations, and domain modeling; the
[artificial intelligence map](bundle/artificial-intelligence/index.md) for model
foundations and agents; or the [assurance map](bundle/assurance/index.md) for claims,
arguments, evidence, and review. The [root map](bundle/index.md) connects these
subjects to reasoning, science, ethics, and other supporting material.

Open the root as an Obsidian vault to browse indexes, links, and backlinks, or
with an AI coding or research agent to learn from or extend the bundle. No
special command syntax is required. Include the subject, goal, current
understanding, source constraints, and available time when relevant. Shared
knowledge belongs in `bundle/`; learner-specific plans belong in
`lesson-plans/` as Obsidian-friendly Markdown.

## Integrity checks

Run the existing custody check from the repository root:

```sh
ruby .okf/scripts/ontology-custody.rb --check
```

It checks catalog custody, artifact checksums, concept classification references,
and generated inventory freshness. It does not establish semantic class suitability,
logical consistency, source correctness, or licensing permission. Bundle changes
also require the checks defined in [the operating contract](OPERATING_CONTRACT.md).

Review committed changes with `git show --stat` and `git show`. Configure Git
LFS only for relevant large-file paths before adding them, and do not copy
storage or publication commands until the repository provides those
facilities.

## Example prompts

- **Browse:** `Show how the existing concepts connect requirements engineering to assurance cases.`
- **Lesson plan:** `Create a [duration] lesson plan that helps me learn [topic] from my current level.`
- **Explain:** `Explain [concept] using the bundle's prerequisites and give me a short check for understanding.`
- **Synthesize:** `Expand the graph to cover [topic], using authoritative sources and connecting it to existing concepts.`
- **Integrate a source:** `Incorporate useful knowledge from [citation, DOI, or URL] into the graph.`
