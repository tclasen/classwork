---
name: okf-ontology-curation
description: Curate, pin, vendor, review, or validate ontologies used by this OKF repository. Use when an approved ontology lacks a suitable class, an ontology release is being added or changed, or concept subjects and the ontology catalog require hermetic validation.
---

# OKF Ontology Curation

Ensure every ontology term used anywhere in the repository resolves to an exact,
approved local artifact. Obey the repository boundaries and authorization rules
in `AGENTS.md`.

## Repository ontology invariant

- Every ontology used in bundle metadata, concept text, code, configuration,
  validation, or documentation must have an entry in `.okf/ontologies.yaml` and
  an exact vendored artifact under `.okf/ontologies/`.
- The catalog and artifacts are repository configuration outside `bundle/`.
- A familiar URI or ontology name is not approval. Never use an ontology term
  until its catalog entry and local artifact are present and verified.
- Runtime validation and node consumption must resolve from the catalog and
  vendored artifacts without network access or silent upgrades.

## Select and approve an ontology

1. Confirm that no pinned ontology supplies a semantically suitable class. Do
   not substitute a vaguely related class or invent an identifier.
2. Research authoritative candidate ontologies. Compare semantic fit, release
   stability, license and redistribution terms, maintained provenance,
   dependencies, artifact format, and pinning options.
3. Propose the smallest appropriate addition and document its fit, exact
   version or commit, licensing, provenance, and tradeoffs before using it.
   Stop for user approval unless the user has already explicitly authorized
   adding that ontology.
4. Retrieve the ontology document from its authoritative publisher. Pin the
   document itself, not merely a website or moving download URL. Never accept an
   error page, login response, empty file, or unverified mirror as the artifact.

## Catalog and vendor the approved artifact

Create a stable catalog key and record:

- canonical ontology URI;
- exact release, version, or commit;
- authoritative retrieval URI;
- repository-relative local artifact path;
- artifact format;
- license and redistribution status;
- provenance and retrieval date;
- SHA-256 or stronger checksum.

Verify that the artifact is non-empty, has the expected file type, matches the
recorded checksum, declares the expected namespace and version when available,
and contains every class referenced by the repository. Vendor imported
ontologies or dependencies as separate pinned entries unless the curated
artifact is demonstrably self-contained.

Treat a processed ontology artifact as immutable. Store a new release or
materially different artifact under a distinct pin and path. Use Git LFS when
repository rules apply; confirm tracking and never edit an LFS pointer as if it
were the ontology document.

## Reconcile and validate repository use

- After adding an ontology, inspect every existing concept and apply its classes
  where they materially improve semantic accuracy. Record why no existing node
  benefits if none does.
- For every concept, require a non-empty `subject` array whose ontology keys
  exist in the catalog and whose class URIs exist in the corresponding vendored
  artifacts. Labels are reader aids and never replace canonical URIs.
- Preserve semantically useful existing classes unless the new class clearly
  supersedes or corrects them. Reconcile affected indexes, validation rules,
  and documentation in the same coherent change.
- Validate the catalog structure, stable keys, pins, URIs, paths, formats,
  licenses, provenance, retrieval dates, checksums, namespace/version
  declarations, imported dependencies, artifact non-emptiness, and every
  referenced class hermetically.
- If ontology work changes bundle concepts, finish through
  `$okf-knowledge-synthesis`, including graph review, validation, explicit
  staging, and the coherent commit.
