# AI-Driven Education and OKF Knowledge Graph Synthesis

This repository is a domain-neutral template for teaching from and maintaining
an Open Knowledge Format (OKF) knowledge bundle. Infer the subject, audience,
scope, and desired outcome from the repository and the user's request. Do not
carry assumptions from the repository from which this template was copied.

When a user asks to add, correct, expand, reorganize, or remove shared
knowledge, manage the bundle according to the repository-pinned
[OKF specification](.okf/SPEC.md). Treat `.okf/SPEC.md` as the sole
authoritative definition of OKF for this repository. Do not browse for a newer
or different OKF specification unless the user explicitly asks to replace the
pinned version.

## Repository boundaries and initialization

The dedicated `bundle/` directory is the complete and exclusive OKF bundle
boundary. Every file and directory beneath `bundle/` is part of the bundle;
nothing outside it is part of the bundle or its concept namespace. Repository
documentation, tooling, configuration, learner workspaces, and temporary source
processing artifacts must remain outside `bundle/`.

An initialized bundle declares its OKF version in `bundle/index.md`. Compare
that declaration with `.okf/SPEC.md` before every bundle change. Migrate the
instructions and bundle together only when the pinned specification is
explicitly replaced.

If `bundle/` does not yet exist, treat the repository as an uninitialized
template. A request to begin a knowledge graph or add its first topic authorizes
creation of `bundle/index.md`, the minimal useful directory structure, and the
first canonical concept under the pinned specification. Do not invent a domain,
audience, taxonomy, or curriculum merely to populate an empty template.

## Operating modes

Infer one or both modes from the user's request; no special command is needed.
If a request combines them, teach first when that helps establish the learner's
need, then perform the authorized knowledge change.

### Knowledge-synthesis mode

Use this mode when the user asks to add, correct, expand, revise, reorganize, or
remove repository knowledge. A short request to add a topic or integrate an
identified source authorizes the complete synthesis workflow: discovery,
research when needed, canonicalization, graph reconciliation, validation, and a
git commit.

For topic-based research, locate authoritative sources appropriate to the
field. Prefer primary sources, standards, official documentation, scholarly
works, or high-quality reference material according to the claim being made.
Verify each source before using it and distinguish sourced facts, synthesis,
interpretation, and uncertainty.

For an identified source, resolve and verify it, check whether it is already
represented, and integrate only knowledge supported by it. Create or update the
canonical source and topic concepts needed for discovery. Reconcile useful
links, backlinks, indexes, citations, metadata, and logs. A concept is not
complete merely because its standalone content is correct: cross-link it
heavily with every existing node whose prerequisite, component, mechanism,
example, evidence, consequence, contrast, or navigation relationship would
help a reader. Treat missing useful links as an incomplete knowledge change.

When the user requests multiple nodes, process them in the order given. Finish
discovery, reconciliation, validation, and a dedicated commit for one node
before starting the next. Treat each node as a coherent knowledge change and do
not stop after the first unless blocked.

### Teaching mode

Use this mode when a learner asks a question, requests an explanation or
clarification, wants help with an exercise, or asks for a learning plan.

- Treat the current concepts and indexes as the primary course material. Read
  the relevant files and their linked prerequisites before answering; do not
  rely on filenames, search snippets, or general memory when the bundle can
  supply the answer.
- Adapt depth, vocabulary, notation, examples, pacing, and checks for
  understanding to evidence of the learner's goals and current knowledge. Ask a
  concise question only when a missing detail would materially change the
  teaching approach.
- Define unfamiliar terms, unpack notation, connect abstractions to concrete
  examples, and correct misconceptions directly and constructively.
- Cite and cross-link relevant repository concepts with contextual standard
  Markdown links so the learner can move through the graph. Link prerequisites,
  supporting concepts, examples, consequences, and useful contrasts wherever
  they occur, rather than leaving related concepts isolated. Clearly
  distinguish bundle content from supplemental inference or outside information.
- Answer from the material as it exists. If the bundle is ambiguous,
  incomplete, or inconsistent, say so rather than presenting a guess as
  established course content.
- A teaching question alone does not authorize routine edits. It does authorize
  repairing an essential prerequisite gap under the rule below.

Treat a learner's question as evidence of a prerequisite gap when the material
depends on a distinct concept beyond the learner's demonstrated or stated
baseline, the bundle does not already teach it adequately, and understanding it
is necessary to answer or proceed. Answer as far as the current material
permits, then enter knowledge-synthesis mode without waiting for a separate
request. Create or expand the canonical prerequisite concept, connect it across
the graph, validate it, and commit the coherent change.

Do not infer a gap solely because a learner asks for repetition, an analogy, or
a simpler explanation. First check whether adapting the teaching approach is
sufficient. Never create a duplicate concept merely to produce an easier
explanation; improve the canonical concept when a change is needed.

## Lesson plans

When asked for a lesson plan, tailor its sequence, pace, explanations,
exercises, and checkpoints to the learner's goals, available time, and
background. Save it under `lesson-plans/` with a descriptive filename unless
the user supplies one. Create the directory if needed.

A lesson plan is a local learner artifact, not a shared OKF concept. Do not add
YAML frontmatter or OKF metadata, do not index it from the bundle, and do not
commit it. Optimize it for Obsidian with a clear title, heading hierarchy,
contextual relative links to canonical concepts, actionable checklists when
useful, and portable Markdown.

Before finalizing a plan, verify that the bundle contains enough material to
complete every required lesson and exercise. If essential concepts or sources
are missing, add them through the complete knowledge-synthesis workflow, then
finish or revise the ignored lesson-plan file to link to the completed material.
External material may provide provenance or optional further reading, but the
bundle itself must explain every required prerequisite at the depth the plan
expects.

When a learner asks to revise a plan while following it, update the existing
file. Add `## Change Log` immediately after the title if absent, record concise
ISO `YYYY-MM-DD` entries newest first, and apply the change throughout the plan.
Synthesize any newly required shared knowledge before considering the revision
complete.

## Source and artifact policy

Use the source format best suited to the domain: publications, datasets,
standards, specifications, documentation, audiovisual material, archival
records, or other authoritative artifacts. Source artifacts that are intended
to travel with the bundle belong beneath `bundle/references/`; temporary
downloads, extracted text, OCR, caches, and working notes remain outside the
bundle and ignored by git.

Do not assume that every source must be copied locally. Prefer a stable
canonical URI when redistribution is unnecessary, disallowed, or impractical.
Before storing any source artifact, check its licensing, provenance, integrity,
and usefulness. Never treat an error page or login response as the requested
file.

Use Git LFS for large or binary source artifacts when the repository has an
applicable `.gitattributes` rule. Verify the detected file type and nonzero size
before staging, confirm LFS tracking with `git lfs ls-files` and
`git check-attr filter`, and run any repository-provided artifact validator.
Once a source artifact has been processed and cited, treat it as immutable;
store a genuinely different version or edition as a distinct file.

If the repository uses deferred LFS fetching, hydrate only the artifacts needed
for the current task. Never edit an LFS pointer as though it were the underlying
file. Do not invent clone, storage, backup, or publication procedures that the
repository has not configured.

## Ontology policy

Every ontology used anywhere in the repository—including bundle metadata,
concept text, code, configuration, validation, and documentation—must be
listed in the repository's ontology allowlist and lock file at
`.okf/ontologies.yaml`. Each entry must identify the ontology's canonical URI,
exact release or commit, retrieval URI, license or provenance, and an immutable
checksum when one is available. A URI or ontology name is not approved merely
because it is well known; do not use an ontology until its pinned allowlist
entry is present. Keep the allowlist outside `bundle/`, because it is repository
configuration rather than bundle knowledge.

When an existing whitelisted ontology does not provide a suitable semantic
term, research authoritative candidate ontologies and propose the smallest
appropriate addition, documenting the fit, licensing, version, provenance, and
tradeoffs before using it. Do not invent ontology identifiers or silently
substitute a vaguely related class. After a new ontology is approved and added,
inspect every existing concept and apply its classes, properties, or other
terms where they materially improve semantic accuracy; update affected
concepts, indexes, validation, and the allowlist in the same coherent change.

## Obsidian and portable Markdown

Treat the repository root as an Obsidian vault. Optimize changes for reading,
navigation, graph review, and editing while preserving OKF conformance within
the bundle. Use portable Markdown, descriptive headings, and contextual
standard Markdown links. Do not replace required Markdown links with
Obsidian-only wikilinks.

Keep shareable vault configuration eligible for version control when it
improves a consistent review experience. Do not commit workspace state, caches,
trash, per-plugin local data, secrets, or operating-system metadata; maintain
appropriate exclusions in the root `.gitignore` when that file exists or when
initializing repository support files is part of the request.

Keep every complete inline Markdown link on one physical source line. Never
insert a newline within the label, between `]` and `(`, or within the
destination.

Use Obsidian-compatible MathJax delimiters. Put display equations between
paired `$$` delimiters on their own physical lines and inline mathematics
between single `$` delimiters. Do not use `\[` and `\]` or `\(` and `\)` as
math delimiters. Verify that delimiters are paired.

When a process, dependency, hierarchy, feedback loop, state transition, spatial
arrangement, or other relationship becomes materially easier to understand as
a diagram, include a concise Mermaid diagram in the concept. Use the simplest
useful structure, keep labels short, retain enough prose to understand the
concept without rendering, and avoid renderer-specific directives or external
assets.

## Self-evolving instructions

This file is the durable source of truth for agent behavior in this repository.
When a user changes a workflow, permission, or standing preference, treat that
as authorization to update `AGENTS.md`. Make the rule precise and include the
instruction change in the same commit as the work that prompted it when
practical. Do not leave a durable behavior change only in conversation history.

Keep example prompts in `README.md` short and focused on a user's goal. Do not
duplicate standing workflow instructions there. When adapting this template to
a real project, replace its generic title and description with the actual
domain, audience, scope, source standards, and verified setup instructions.

Keep lesson plans as ignored local files under `lesson-plans/`; do not create a
tracked `PLAN.md` or equivalent shared guide unless the user explicitly changes
this policy.

After adding a new node, recommend useful next nodes based on its relationships
and remaining graph gaps. Include concise reasoning and links to relevant
sources or concepts when available.

## Required knowledge-change workflow

1. Use local `main` as the source of truth. Check it out before a change and
   work in the main worktree unless the user explicitly establishes another
   collaboration model.
2. Read `.okf/SPEC.md` completely before editing the bundle. If it is missing
   or unreadable, report the blocker rather than substituting an online source.
3. Inspect `git status`. Preserve unrelated user changes and never include them
   in the knowledge-change commit.
4. Discover before editing:
   - Read `bundle/index.md` and relevant nested indexes first. For an
     uninitialized template, inspect the repository documentation and begin
     with the smallest structure required by the pinned specification.
   - List the Markdown tree and search titles, descriptions, resources, tags,
     headings, links, and body text for related concepts.
   - Read each relevant concept and its directly related concepts. Follow
     links in both directions when they may add context or reveal conflicts.
   - Search for concepts that mention the same entities, systems, processes,
     fields, owners, dependencies, inputs, outputs, prerequisites,
     alternatives, or consequences. Treat this as link discovery, not only a
     keyword search.
   - Inspect relevant logs and git history when they clarify current intent.
5. Reconcile what the graph already says:
   - Identify existing facts and links and determine what the new information
     confirms, supersedes, qualifies, or contradicts.
   - Prefer updating an existing canonical concept over creating a duplicate.
   - Preserve correct content, producer-defined metadata, uncertainty,
     provenance, and meaningful nuance.
   - Reconcile affected concepts when the intended truth is clear. Otherwise,
     record uncertainty or ask the user when the choice is consequential.
   - Review each affected concept's `subject` field. Confirm that every class
     is from the pinned ontology allowlist, and when a newly added ontology
     offers a materially better class, add that class to existing nodes where
     it makes sense.
6. Plan the smallest coherent change: canonical concepts, supporting concepts,
   all discovered cross-links and contextual backlinks, indexes, citations,
   metadata, and logs. Include neighbor updates needed to keep the graph
   richly connected and navigable.
   Rename or reorganize paths only when it materially improves the graph, and
   update every affected reference.
7. Apply the change under the authoring rules below.
8. Review the complete affected graph. Check terminology and claims across all
   touched concepts and their direct neighbors, verify useful outbound links
   and contextual backlinks in both directions, then perform a second
   bundle-wide link-discovery pass for missed connections.
9. Run OKF and repository-specific validation. Fix failures caused by the
   change.
10. Stage explicit paths only. Verify the staged set contains the whole coherent
    change and no unrelated work.
11. Create exactly one imperative, specific commit per requested node or
    coherent change. Do not amend or rewrite unrelated commits.
12. Report concepts changed, reconciliation decisions, sources, validation,
    local commit hash, and any successfully published remote or pull-request
    URL. Never claim an action succeeded without direct confirmation.

Do not stop after drafting. A knowledge-management request is complete only
after the coherent change is validated and committed. If a commit cannot be
made, explain the blocker and leave validated working-tree changes intact.

## Topic scope and explanatory closure

- Create or update exactly one canonical concept for each distinct topic. Do
  not split one topic across competing concepts or create duplicates.
- Keep a new topic's initial treatment as short as the user's learning goal and
  explanatory closure permit.
- Create separate supporting concepts for independently meaningful
  prerequisites, components, mechanisms, examples, or consequences. Apply this
  recursively until every explanatory leaf is grounded in reasoning, evidence,
  or data that the bundle explains.
- Reuse and expand existing canonical concepts whenever they cover a required
  parent or child topic. Include recursively required concepts and graph
  changes in the same coherent commit as the requested topic.
- Keep general topics, organizations, practices, domains, references, and
  skillsets focused on their own subjects. Documentation outside the bundle
  does not establish a person-to-concept association.
- Do not create a concept about a person or people unless the user explicitly
  requests or authorizes it. Use an existing person concept only when the
  relationship is materially relevant.

## OKF authoring rules

Apply these rules only to Markdown inside `bundle/`; ordinary repository
documentation remains ordinary Markdown.

- A concept is one UTF-8 Markdown file. Its concept ID is its bundle-relative
  path without `.md`.
- `index.md` and `log.md` are reserved filenames and are not concepts.
- Every concept begins with parseable YAML frontmatter and a non-empty,
  descriptive `type`. OKF does not centrally register types, so choose a short,
  self-explanatory value that accurately supports routing and presentation.
  Reuse the repository's established type vocabulary when one exists, and do
  not force a concept into an inaccurate class.
- Prefer the recommended fields when applicable: `title`, `description`,
  `resource`, `tags`, and `generated`.
- Follow the pinned specification's actor convention in `generated.by` and
  `verified[].by`. Update `generated` only for a meaningful concept change and
  use an ISO 8601 timestamp with an explicit timezone in `generated.at`.
- Preserve unknown frontmatter keys.
- Every concept must have a non-empty `subject` array containing at least one
  ontology class. Each entry must identify a class URI from a whitelisted,
  pinned ontology in `.okf/ontologies.yaml` and should include the ontology key
  and human-readable label, for example:

  ```yaml
  subject:
    - ontology: example-ontology
      class: https://example.org/ontology/RelevantClass
      label: Relevant class
  ```

  `subject` is a repository-defined OKF extension: it is an array of ontology
  classes that semantically classify the concept, not a provenance citation.
  Do not modify `.okf/SPEC.md` to define it. Do not create or update a node
  without a suitable class: research and propose a new ontology under the
  ontology policy when the allowlisted ontologies are insufficient.
- Use structural Markdown and only headings that serve the concept.
- Record provenance in `sources`. Give a source an `id` when the body attributes
  a claim to it and use a footnote with the same ID at the relevant claim.
  Reuse suitable authoritative sources already represented. Never invent a
  source or claim verification that did not occur.
- Every internal link must resolve. Describe not-yet-written knowledge as plain
  text until its concept exists. Within the existing graph, add links wherever
  a reader would reasonably benefit from moving to another OKF node; do not
  leave a meaningful relationship implicit merely because the concepts share a
  keyword.

## Linking and graph reconciliation

- Cross-linking is a first-class requirement of every concept change. Search
  the entire bundle—not only the new or edited file—for every meaningful
  relationship to existing OKF nodes, and prefer a connected graph with rich
  contextual navigation over isolated, self-contained pages. Shared words or
  tags alone do not establish a useful relationship, but any substantive
  prerequisite, component, mechanism, example, evidence, consequence, contrast,
  alternative, or next step should be considered for a link.
- Link terms or sentences at the point where each relationship matters. Use
  descriptive link text and prose that explains the relationship; avoid bare
  path lists, generic `here` links, or context-free link sections. Add links in
  both directions when both concepts benefit: backlinks are expected whenever
  the changed concept provides useful detail, evidence, prerequisites,
  consequences, contrast, or a natural next step.
- Inspect current outgoing links, incoming links, and relevant second-order
  neighbors before editing and after editing. Revisit affected neighbors and
  add or repair their contextual links as part of the same coherent change.
  Bidirectional links need not repeat wording; each direction must explain its
  own perspective.
- Before declaring a concept complete, explicitly ask: what does this concept
  require, explain, exemplify, support, affect, contradict, or lead to? Link
  each applicable answer to its canonical node, and record why a plausible
  related node was not linked when no meaningful relationship exists.
- Use standard inline Markdown and paths relative to the containing file:

  `[descriptive text](../relative/path/to/concept.md)`

- Internal document links must include `.md`, use no leading slash, and target
  a directory's `index.md` rather than the bare directory. Preserve fragments
  and verify their heading anchors.
- When moving or renaming a node, update every incoming and outgoing link,
  path-valued metadata field, citation, index, and log affected by the new
  concept ID or path.

## Indexes and logs

- Maintain `index.md` files as human-readable, progressive-disclosure maps.
  Except for the bundle-root version declaration, indexes have no frontmatter.
- Group entries under useful headings in this form:

  `* [Title](relative-path.md) - description`

- Keep each entry synchronized with the concept's title and description. Link
  useful subdirectory entries to their `index.md`.
- The bundle-root index must retain the version declaration required by the
  pinned specification until the bundle is explicitly migrated. Do not add
  unrelated frontmatter to index files.
- Update a relevant `log.md` when one exists. Keep ISO `YYYY-MM-DD` headings
  newest first and add concise linked entries such as **Creation**, **Update**,
  or **Deprecation**. Do not create a log without a demonstrated need or an
  established repository practice.

## Validation and commit discipline

Before committing:

- Parse every changed concept's frontmatter and confirm its `type` is non-empty.
- Parse `.okf/ontologies.yaml` when present. Confirm every ontology used by the
  repository is allowlisted, pinned to an exact release or immutable commit,
  and accompanied by its retrieval, provenance, licensing, and integrity
  details. Confirm every concept has a non-empty `subject` array with at least
  one entry and that each referenced class belongs to a whitelisted ontology.
- When the change adds an ontology, verify that existing concepts were reviewed
  for applicable classes or properties and that suitable references were added,
  or record why no existing node benefits from the new ontology.
- Confirm changed indexes and logs follow their reserved formats.
- Check every internal link in changed documents: it must be relative, include
  `.md`, resolve to an existing file, and resolve to an existing heading when a
  fragment is present.
- Reject Markdown links split across physical lines.
- Check MathJax delimiter pairs and Mermaid fence balance, basic declaration
  validity, and consistency with surrounding prose.
- For each new concept, record which existing concepts were considered for
  relationships. Confirm that every applicable prerequisite, component,
  mechanism, example, evidence, consequence, contrast, alternative, and next
  step is cross-linked, with contextual backlinks where useful; if no related
  concept exists, report that result.
- Search for stale incoming links, titles, descriptions, facts, metadata, and
  missed graph connections. Treat an under-linked but otherwise correct
  concept as a validation failure until the relationship has been assessed and
  either linked or explicitly ruled out.
- Run repository-provided formatters, validators, artifact checks, and tests
  relevant to the changed files.
- Inspect `git diff --check`, the complete scoped diff, and the staged diff.
- Stage explicit paths only, then verify the staged set before committing.
