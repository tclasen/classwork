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
- In an explicit maintenance or looping audit, inspect ontology catalog entries,
  vendored artifacts, checksums, namespaces, dependencies, and every concept
  subject for drift or weak semantic fit. Repair only verified, in-scope
  defects; a genuinely missing suitable class still requires the approval
  workflow below.
- A class selected for a node's `subject` must be an authoritative,
  industry-standard reference with strong semantic fit to the node. Reject
  broad generic fallbacks such as `activity`, `event`, or `process` when they
  merely describe the general shape of the topic rather than the topic itself.
  If no specific approved class fits after reviewing the complete catalog,
  represent that conclusion explicitly with `subject: []` and a pending
  `subject_review`; never weaken the classification just to make `subject`
  non-empty.

## Select and approve an ontology

1. Confirm that no pinned ontology supplies a semantically suitable class. Do
   not substitute a vaguely related or generic class, such as `activity`,
   `event`, or `process`, or invent an identifier. The candidate must be an
   industry-standard term whose definition strongly matches the concept.
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

- After adding or changing an ontology, inspect every existing concept,
  including every pending classification, and apply its classes where they
  materially improve semantic accuracy. Refresh each still-pending review so
  its checked keys exactly cover the updated catalog. Record why no existing
  node benefits if none does.
- For every concept, require exactly one classification state. A non-empty
  `subject` array must use ontology keys that exist in the catalog and class
  URIs present in the corresponding vendored artifacts, with no
  `subject_review`. Each class must be a strongly aligned, industry-standard
  classification of the concept, not a generic fallback such as `Entity`,
  `Activity`, `Agent`, `Plan`, `Process`, or `Relationship`. Labels are reader
  aids and never replace canonical URIs. When no suitable class exists after a
  complete catalog review, require `subject: []` plus `subject_review` with
  `status: pending`, reason `no-suitable-authoritative-class`, a
  timezone-bearing reviewer event, and the full sorted catalog-key set.
- Preserve semantically useful existing classes unless the new class clearly
  supersedes or corrects them. Reconcile affected indexes, validation rules,
  and documentation in the same coherent change.
- Validate the catalog structure, stable keys, pins, URIs, paths, formats,
  licenses, provenance, retrieval dates, checksums, namespace/version
  declarations, imported dependencies, artifact non-emptiness, every
  referenced class, and every pending review's exact catalog coverage
  hermetically.
- If ontology work changes bundle concepts, finish through
  `$okf-knowledge-synthesis`, including graph review, validation, explicit
  staging, and the coherent commit.
