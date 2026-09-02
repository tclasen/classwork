---
name: okf-knowledge-synthesis
description: Maintain the repository's OKF knowledge bundle when adding, correcting, expanding, reorganizing, or removing shared knowledge. Use for concept synthesis, graph reconciliation, OKF authoring, validation, and per-node commits; do not use for teaching-only answers or local lesson-plan edits.
---

# OKF Knowledge Synthesis

Create the smallest coherent, validated knowledge change that satisfies the
learner's goal and leaves the graph internally consistent. Obey the repository
boundaries and invariants in `AGENTS.md`; this skill supplies the task-specific
procedure.

## Authorization and sequencing

- A request to add, correct, expand, revise, reorganize, or remove shared
  knowledge authorizes discovery, research when needed, canonicalization,
  graph reconciliation, validation, and a git commit.
- Treat each requested node as one coherent knowledge change. For multiple
  nodes, process them in the user's order and complete discovery,
  reconciliation, validation, and a dedicated commit for one before starting
  the next.
- Use local `main` and the main worktree unless the user explicitly establishes
  another collaboration model.
- Never create a concept about a person or people unless the user explicitly
  requests or authorizes it.
- For an explicit maintenance, housekeeping, audit, or looping `/goal` request,
  act as the coordinating graph-maintenance skill: inspect for justified
  opportunities to add missing essential concepts, repair or remove stale and
  duplicate links, improve node content and metadata, reconcile indexes and
  structure, and reduce progressive-disclosure complexity. Coordinate with all
  other available skills and apply their scopes before declaring the pass
  complete. Verify both local consistency among affected concepts and their
  neighbors and global consistency across the full repository, including all
  applicable invariants and specified rules; do not make unsupported
  speculative changes.

## Prepare and discover

1. Read `.okf/SPEC.md` completely before editing `bundle/`. If it is missing or
   unreadable, stop rather than substituting an online specification.
2. Inspect `git status` and preserve unrelated user changes.
3. Read `bundle/index.md` and relevant nested indexes. Confirm the bundle's
   declared OKF version matches the pinned specification. For an uninitialized
   template, create only the minimal useful structure and first requested
   concept; do not invent a domain, audience, taxonomy, or curriculum.
4. List the Markdown tree and search titles, descriptions, resources, tags,
   headings, links, and body text for the topic and related entities,
   processes, prerequisites, components, mechanisms, evidence, consequences,
   contrasts, alternatives, inputs, and outputs.
5. Read each relevant concept, its directly linked neighbors, and useful
   incoming links. Inspect relevant logs and git history when they clarify
   current intent.
6. Determine what the requested information confirms, supersedes, qualifies,
   or contradicts. Prefer updating the canonical concept over creating a
   duplicate; preserve correct content, producer-defined metadata,
   uncertainty, provenance, and nuance. Reconcile when the intended truth is
   clear; otherwise record uncertainty or ask the user when the choice is
   consequential.
7. For topic-based research, use verified authoritative sources appropriate to
   each claim, preferring primary sources, standards, official documentation,
   scholarship, or high-quality reference material. Distinguish sourced facts,
   synthesis, interpretation, and uncertainty.

## Scope for explanatory closure

- Create or update exactly one canonical concept for each distinct topic.
- Keep the initial treatment concise, but recursively add or expand every
  independently meaningful prerequisite, component, mechanism, notation, and
  foundation required to understand or use it unless an existing canonical
  concept already teaches it adequately.
- Create separate supporting concepts for prerequisites, components,
  mechanisms, examples, or consequences that are independently meaningful.
- When authoring or revising a concept, scan the entire note for every
  independently meaningful domain term, pattern, object type, mechanism,
  notation, prerequisite, or named relationship. Search for an existing
  canonical concept and link it at first substantive use and wherever the
  relationship materially matters. If none exists and the term is required to
  understand the note, create one coherent child concept in the same change,
  link the parent to it in explanatory prose, link the child back to the parent
  in explanatory prose, and add the child to the appropriate index.
- Do not leave a meaningful term merely bolded, italicized, or mentioned
  without either a definition or a justified canonical link. A detached list
  of related links does not satisfy this requirement.
- Continue until every explanatory leaf is grounded in reasoning, evidence, or
  data taught inside the bundle. Citations, ontology artifacts, external
  standards, domain terms, and unexplained background do not close the chain.
- Reuse existing canonical concepts and include all required closure and graph
  changes in the same operation and commit. Do not defer essential gaps.
- Keep organizations, practices, domains, references, and skillsets focused on
  their own subjects. Documentation outside the bundle does not establish a
  person-to-concept association.

## Author concepts

Apply these rules only to Markdown under `bundle/`:

- One UTF-8 Markdown file is one concept. Its concept ID is its bundle-relative
  path without `.md`; `index.md` and `log.md` are reserved and are not concepts.
- Start every concept with parseable YAML frontmatter and a non-empty,
  descriptive `type`. Reuse the repository's type vocabulary when accurate;
  OKF does not centrally register types.
- Prefer applicable recommended fields: `title`, `description`, `resource`,
  `tags`, and `generated`. Preserve unknown keys.
- Follow the pinned actor convention for `generated.by` and `verified[].by`.
  Update `generated` only for a meaningful concept change and use an ISO 8601
  timestamp with an explicit timezone in `generated.at`.
- Require a `subject` array in exactly one of two states. When a suitable class
  exists, make the array non-empty, omit `subject_review`, and use only ontology
  keys from `.okf/ontologies.yaml` and canonical class URIs present in their
  vendored artifacts. Include useful labels when available. Each selected
  class must be an authoritative, industry-standard reference that strongly
  aligns with and describes the node itself. Do not use generic fallbacks such
  as `Entity`, `Activity`, `Agent`, `Plan`, `Process`, or `Relationship` merely
  to populate `subject`. If no sufficiently specific class fits after reviewing
  the complete approved catalog, use `subject: []` and record a pending
  `subject_review` with `status: pending`, reason
  `no-suitable-authoritative-class`, a timezone-bearing reviewer event, and the
  complete sorted set of catalog keys checked. Reconsider pending reviews
  whenever the catalog changes. Use `$okf-ontology-curation` for this review;
  never invent or select a vaguely related class to avoid a pending state.
- Treat `subject` as a repository-defined OKF extension for semantic
  classification, not provenance. Do not modify `.okf/SPEC.md` to define it;
  the label is optional and never replaces the canonical class URI.
- Record provenance in `sources`. When the body attributes a claim, give the
  source an `id` and cite it with a matching footnote at the claim. Never invent
  a source or verification.
- Describe knowledge as plain text until its canonical concept exists; then
  create resolving contextual links.
- Use portable Markdown. Keep complete inline links on one physical line. Use
  single-dollar inline MathJax and paired `$$` display delimiters on their own
  lines; do not use `\(`, `\)`, `\[`, or `\]` as delimiters.
- Include a concise Mermaid diagram when it materially clarifies a process,
  dependency, hierarchy, feedback loop, state transition, or spatial
  relationship. Keep enough prose for readers who do not render it, and avoid
  renderer-specific directives or unnecessary external assets.

## Reconcile the graph

- Search the whole bundle for substantive prerequisite, component, mechanism,
  example, evidence, consequence, contrast, alternative, and next-step
  relationships. Shared words or tags alone do not justify links.
- Link useful relationships with descriptive prose explaining their direction.
  Avoid bare path lists, generic link labels, arbitrary density, and
  context-free link sections.
- Add contextual backlinks when the neighboring concept's readers benefit.
  Every newly created supporting concept must contain a contextual backlink to
  each directly relevant parent concept, stating the relationship; a bare
  "see also" link is insufficient.
  Inspect outgoing, incoming, and relevant second-order links before and after
  editing.
- Use standard relative Markdown links that include `.md`, have no leading
  slash, target a directory's `index.md` rather than the bare directory, and
  preserve valid heading fragments.
- For moves or renames, update every incoming and outgoing link, path-valued
  metadata field, citation, index, and log affected by the new concept ID.
- Maintain indexes as concise progressive-disclosure maps, not prescribed
  routes. Use `* [Title](relative-path.md) - description`, synchronize titles
  and descriptions, link useful subdirectories to their `index.md`, and retain
  the root's OKF version declaration. Indexes otherwise have no frontmatter.
- Update an existing relevant `log.md` with newest-first ISO date headings and
  concise linked **Creation**, **Update**, or **Deprecation** entries. Do not
  create a log without an established need or repository practice.
- During bundle-wide review, remove duplicate index entries, synchronize root
  and nested indexes, group coherent subjects, identify weak incoming links and
  locally isolated concepts, and add a scoped subdirectory only when a flat
  directory impedes disclosure.

## Review, validate, and commit

1. Review touched concepts and their direct neighbors for terminology, claims,
   useful outbound links, and contextual backlinks. Perform a terminology-
   closure audit: extract every capitalized, bolded, italicized, or
   domain-specific term from each changed concept and confirm that it is linked
   to an existing canonical concept, created as a new canonical concept and
   linked bidirectionally, or explicitly ruled out as ordinary language,
   source-specific wording, or insufficiently independent to warrant its own
   node. Treat unresolved meaningful terms as validation failures. Perform a
   second bundle-wide link-discovery pass.
2. Parse every changed concept's frontmatter; confirm non-empty `type` and
   exactly one valid `subject`/`subject_review` state. For pending reviews,
   confirm the recorded catalog keys exactly equal the complete sorted current
   catalog. Use `$okf-ontology-curation` for hermetic catalog, artifact,
   checksum, namespace, dependency, class, and pending-disposition validation.
3. Check changed indexes and logs, every internal link and fragment, split
   Markdown links, MathJax delimiter pairs, Mermaid fence balance, and
   consistency between diagrams and prose.
4. For each new concept, record the relationship candidates considered and
   confirm every applicable link and useful backlink, or report why none
   applies. Treat unresolved under-linking as a validation failure.
5. Search for stale incoming links, titles, descriptions, claims, and metadata.
   Run repository-provided formatters, validators, artifact checks, and tests.
6. Inspect `git diff --check` and the complete scoped diff. Stage explicit
   paths only, inspect the staged diff and path set, then create exactly one
   imperative, specific commit for the node or coherent change. Do not amend or
   rewrite unrelated commits.
7. Report concepts changed, reconciliation decisions, sources, validation,
   relationship candidates, and the local commit hash. Mention a remote or pull
   request only after directly confirming it.

A knowledge change is incomplete until validation and commit succeed. If the
commit fails, explain the blocker and leave the validated changes intact.
