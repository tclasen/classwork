---
type: Foundational Concept
title: Roles, authority, and organizations
description: Agents organized into roles with responsibilities, powers, and decision rights.
tags: [foundations, roles, authority, organizations, accountability]
subject:
  - ontology: org-0.8
    class: http://www.w3.org/ns/org#Organization
    label: Organization
  - ontology: org-0.8
    class: http://www.w3.org/ns/org#Role
    label: Role
status: stable
generated: { by: "codex/gpt-5.6", at: "2026-09-02T13:23:01-07:00" }
sources:
  - id: w3c-prov-dm
    resource: https://www.w3.org/TR/prov-dm/
    title: W3C PROV-DM Provenance Data Model
    author: "w3c/PROV-DM"
    last_modified: 2013-04-30
---

# Organized agency

An **organization** is a coordinated group with structures or practices for
acting together. A **role** is a position or function defined by a context;
one agent may occupy several roles, and a role may be filled by different
agents over time. **Authority** is recognized power to decide, direct, approve,
or grant permission in a scope. A **responsibility** is an expectation or
obligation attached to an agent or role; it is not automatically proof that the
agent caused an outcome.

A **decision right** specifies who may make or approve a decision. Delegating a
role or permission can distribute practical control without erasing the
original organization's duties. Records should distinguish the person or
system that acted, the role under which it acted, and the authority relied on.[^w3c-prov-dm]

This foundation supports [digital identity and authorization](../cybersecurity/digital-identity-and-authorization.md),
[moral agency and responsibility](../ethics/moral-agency-and-responsibility.md),
and [assurance cases](../assurance/assurance-case.md).

[^w3c-prov-dm]: W3C, [PROV-DM: The PROV Data Model](https://www.w3.org/TR/prov-dm/).
