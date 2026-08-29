# AI-Driven Education and OKF Knowledge Graph Synthesis

This repository is a domain-neutral template for teaching from and maintaining
an Open Knowledge Format (OKF) knowledge bundle. Infer the subject, audience,
scope, and desired outcome from the repository and the user's request. Do not
carry assumptions from the repository from which this template was copied.

## Durable repository policy

The repository-pinned [OKF specification](.okf/SPEC.md) is the sole
authoritative definition of OKF for this repository. Do not browse for another
version unless the user explicitly asks to replace the pin. Read the file
completely before every bundle change; if it is missing or unreadable, report
the blocker rather than substituting an online source.

The dedicated `bundle/` directory is the complete and exclusive OKF bundle
boundary. Everything beneath it is part of the bundle and its concept
namespace; repository documentation, tooling, configuration, learner
workspaces, and temporary processing artifacts remain outside it. An
initialized bundle declares its OKF version in `bundle/index.md`; compare that
declaration with `.okf/SPEC.md` before changing the bundle. Replace or migrate
the specification, instructions, and bundle together only when explicitly
authorized.

If `bundle/` does not exist, a request to begin a graph or add its first topic
authorizes the smallest conforming initialization and the first canonical
concept. Do not invent a domain, audience, taxonomy, or curriculum merely to
populate an empty template.

Every ontology used anywhere in the repository must be cataloged and locked in
`.okf/ontologies.yaml`, with its exact artifact vendored under
`.okf/ontologies/`. Every bundle concept requires at least one suitable,
catalog-backed ontology class in its `subject` array. Never invent a class,
silently fetch a newer ontology, or use an ontology solely because its name or
URI is familiar.

Portable source artifacts that belong with the bundle go under
`bundle/references/`. Temporary downloads, extraction output, OCR, caches, and
working notes stay outside the bundle and ignored by git. Lesson plans are
ignored local artifacts under `lesson-plans/`; they are not bundle concepts and
must not be committed or indexed from the bundle.

Do not create a concept about a person or people unless the user explicitly
requests or authorizes it. Use an existing person concept only when the
relationship is materially relevant.

Treat the repository root as an Obsidian vault while preserving portable
Markdown. Use contextual standard Markdown links rather than Obsidian-only
wikilinks. Keep complete inline links on one physical line. Use single-dollar
inline MathJax and paired `$$` display delimiters on their own lines. Include a
concise Mermaid diagram when it materially clarifies a relationship, while
retaining enough prose to understand the concept without rendering.

Keep shareable vault configuration eligible for version control when it
improves review consistency. Do not commit workspace state, caches, trash,
per-plugin local data, secrets, or operating-system metadata; maintain suitable
root `.gitignore` exclusions when repository support files are in scope.

## Required workflow skills

Task-specific procedures live in project-owned skills under `.agents/skills/`.
When a trigger below matches, use the named skill and read its `SKILL.md`
completely before taking task actions. Use all applicable skills for combined
requests. These skills supplement this durable policy and do not expand user
authorization or relax repository invariants.

- Use [`$okf-knowledge-synthesis`](.agents/skills/okf-knowledge-synthesis/SKILL.md) when adding, correcting, expanding, revising, reorganizing, or removing shared knowledge. A short knowledge request authorizes its complete discovery, research, canonicalization, graph reconciliation, validation, and commit workflow.
- Use [`$okf-teaching`](.agents/skills/okf-teaching/SKILL.md) when a learner asks for an explanation, clarification, exercise help, or conceptual guidance. Teaching alone does not authorize routine edits; the skill defines when an essential prerequisite gap authorizes a knowledge repair.
- Use [`$okf-ontology-curation`](.agents/skills/okf-ontology-curation/SKILL.md) when selecting, adding, pinning, updating, reviewing, or hermetically validating ontologies or concept classes.
- Use [`$okf-lesson-plans`](.agents/skills/okf-lesson-plans/SKILL.md) when creating or revising a saved lesson plan, learning route, schedule, exercise sequence, or checkpoint set.
- Use [`$okf-source-intake`](.agents/skills/okf-source-intake/SKILL.md) when resolving, verifying, assessing, storing, or integrating an identified publication, dataset, standard, specification, documentation set, audiovisual work, archival record, or other source artifact.

For combined teaching and knowledge work, teach first when that clarifies the
learner's need. For an identified source, perform source intake before
knowledge synthesis. Invoke ontology curation if synthesis cannot assign a
suitable approved class. A lesson plan must trigger knowledge synthesis before
completion when its required material is missing from the bundle.

## Shared graph invariants

Treat the bundle as an organic graph, not a prescribed curriculum. Do not add a
"Start here" section, canonical sequence, or prebuilt learning path unless the
user explicitly requests one as a durable artifact. Preserve stable concept
paths, descriptive progressive-disclosure indexes, and contextual links and
backlinks so custom routes remain derivable from graph relationships.

Maintain exactly one canonical concept for each distinct topic. Keep it as
concise as the learning goal permits while ensuring that every required
prerequisite, component, mechanism, notation, and foundation is taught inside
the bundle or linked to an adequate canonical concept. Citations and external
standards provide provenance but do not replace explanations needed for
understanding.

Every concept is one UTF-8 Markdown file with parseable YAML frontmatter, a
non-empty descriptive `type`, and a non-empty catalog-backed `subject` array.
Preserve unknown metadata, producer-defined fields, correct content,
uncertainty, provenance, and meaningful nuance. Record sources honestly and
place matching footnotes at attributed claims; never invent a source or
verification.

Link substantive prerequisites, components, mechanisms, examples, evidence,
consequences, contrasts, alternatives, and useful next steps with descriptive
prose. Add contextual backlinks when neighboring readers benefit. Internal
bundle links must be relative, include `.md`, resolve to an existing file and
heading, have no leading slash, and target a directory's `index.md` rather than
the bare directory.

Keep indexes concise and synchronized with current titles and descriptions.
Update an existing relevant `log.md` when appropriate, using newest-first ISO
date headings and concise linked entries. Do not create a log without a
demonstrated need or established repository practice.

## Change, validation, and commit discipline

Use local `main` as the source of truth and work in the main worktree unless the
user establishes another collaboration model. Inspect `git status` before
editing. Preserve unrelated user changes and never include them in a commit.

For each knowledge change, discover and reconcile before editing, review the
affected graph afterward, and perform a second bundle-wide connection search.
Run repository-provided validation and relevant tests. At minimum, validate
frontmatter, ontology catalog and artifacts, concept subjects, indexes, logs,
internal files and heading fragments, unsplit links, MathJax pairs, Mermaid
fences, and stale graph references. Treat applicable missing links and
backlinks as validation failures until linked or explicitly ruled out.

Inspect `git diff --check`, the complete scoped diff, and the staged diff. Stage
explicit paths only. Create exactly one imperative, specific commit per
requested node or coherent instruction change; process multiple requested
nodes in user order and finish one commit before starting the next. Never amend
or rewrite unrelated commits.

A knowledge-management request is complete only after validation and commit.
If committing fails, explain the blocker and leave validated changes intact.
Report changed concepts, reconciliation decisions, sources, validation,
relationship candidates, local commit hashes, and only directly confirmed
remote or pull-request URLs.

## Delegation and model selection

Delegate independent research, discovery, review, validation, and drafting
aggressively to fresh workers when supported. Give each a precise objective,
relevant files or questions, expected output, and scope constraints.
Parallelize independent read-only work, but serialize dependent work and
same-file edits.

Isolate concurrent writing in separate worktrees, clones, patches, or staging
areas. Never share a worktree, branch, index, or concurrently edited file.
Assign one owner to coordination-sensitive files and integrate authorized
changes sequentially after refreshing from local `main`. If isolation is not
possible, serialize the work or report the blocker. Remove temporary
coordination artifacts only after no active worker needs them.

Use the least expensive, fastest model adequate for each subtask, reserving
stronger reasoning for ambiguous evidence, ontology or schema judgment,
conflicts, difficult debugging, and nontrivial reconciliation. Delegated output
is evidence or a proposal: the primary agent must inspect it, resolve
conflicts, verify claims and paths, enforce scope, perform graph-wide checks,
validate, and commit. Sub-agents may not commit, publish, alter durable
instructions, or perform destructive actions unless explicitly authorized and
assigned. Never sacrifice accuracy, source verification, safety, or repository
conformance for cost or speed. Report delegated subtasks and model capability
when available.

## Self-evolving instructions

This file is the durable source of truth for repository-wide behavior. When a
user changes a workflow, permission, or standing preference, update the
relevant skill and keep this file's policy and routing synchronized in the same
commit when practical. Do not leave durable behavior only in conversation
history.

Keep `README.md` examples short and goal-focused; do not duplicate standing
workflow instructions there. When adapting this template to a real project,
replace its generic title and description with the actual domain, audience,
scope, source standards, and verified setup instructions.

After adding a node, recommend useful next nodes based on its relationships and
remaining graph gaps, with concise reasoning and links to relevant concepts or
sources when available.
