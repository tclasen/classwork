---
name: okf-source-intake
description: Resolve, verify, assess, and integrate an identified source or source artifact for this OKF repository. Use for publications, datasets, standards, documentation, audiovisual or archival material, local reference storage, provenance, licensing, integrity, and LFS decisions.
---

# OKF Source Intake

Integrate only verified knowledge supported by the identified source, while
keeping portable artifacts and temporary processing data in their correct
repository locations. Obey the durable policy in `AGENTS.md`.

## Resolve and assess the source

1. Resolve the exact source, edition, version, or release intended by the user.
   Verify its publisher, authorship when applicable, publication context,
   canonical URI, and integrity. Never treat an error page, login response,
   preview shell, or unrelated file as the requested source.
2. Search the bundle and repository references to determine whether the source
   or edition is already represented. Reuse canonical source concepts and
   artifacts when they are the same source.
3. Evaluate authority and suitability for the claims being integrated. Prefer
   primary sources, standards, official documentation, scholarship, or
   high-quality reference material appropriate to the domain.
4. Inspect license, redistribution terms, provenance, format, size, stability,
   and practical usefulness before storing an artifact.

## Decide whether to store an artifact

- Prefer a stable canonical URI when local redistribution is unnecessary,
  disallowed, or impractical.
- Portable source artifacts intended to travel with the bundle belong under
  `bundle/references/`.
- Temporary downloads, extracted text, OCR, caches, and working notes must stay
  outside `bundle/` and be ignored by git.
- Verify a stored artifact's detected file type, nonzero size, provenance, and
  integrity before staging it.
- Use Git LFS when an applicable `.gitattributes` rule requires it. Confirm with
  `git check-attr filter` and `git lfs ls-files`, and run repository artifact
  validators. Hydrate only artifacts needed for the current task when deferred
  fetching is configured.
- Never edit an LFS pointer as though it were the underlying file.
- Once processed and cited, treat an artifact as immutable. Store a genuinely
  different version or edition as a distinct file.
- Do not invent repository clone, storage, backup, or publication procedures.

## Integrate supported knowledge

- Extract only knowledge supported by the verified source. Distinguish sourced
  facts from synthesis, interpretation, and uncertainty.
- Use `$okf-knowledge-synthesis` to create or update the canonical source and
  topic concepts needed for discovery and to reconcile useful links,
  backlinks, indexes, citations, metadata, and logs.
- Record provenance in concept `sources`. Assign an `id` when attributing a
  body claim and use a matching footnote at that claim. Do not invent a source
  or claim verification that did not occur.
- Ensure the final concept metadata and prose identify the exact source or
  edition used. A different edition is not interchangeable merely because its
  title matches.
- Validate the artifact, concepts, links, and explicit staged paths before the
  coherent knowledge-change commit.
