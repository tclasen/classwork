---
type: Cybersecurity Concept
title: Tokens and delegation
description: Representing limited authority for a client to act on behalf of a resource owner.
tags: [cybersecurity, tokens, delegation, OAuth, scopes]
subject:
  - ontology: odrl-2.2
    class: http://www.w3.org/ns/odrl/2/Permission
    label: Permission
  - ontology: prov-o
    class: http://www.w3.org/ns/prov#Entity
    label: Entity
status: stable
generated: { by: "codex/gpt-5.6", at: "2026-08-29T00:00:00-07:00" }
sources:
  - id: oauth-rfc
    resource: https://www.rfc-editor.org/rfc/rfc6749
    title: RFC 6749 The OAuth 2.0 Authorization Framework
    author: "ietf/RFC-6749"
    last_modified: 2012-10-01
---

# Limited delegated authority

**Delegation** lets one subject authorize another client or agent to perform
specified actions on a resource. A **token** is a representation of that grant
or authorization result. Its scope, audience, issuer, lifetime, and revocation
state limit what the holder may do; possession of a token is not the same as
the resource owner's complete identity.

In OAuth, a resource owner authorizes a client through an authorization server,
which issues an access token for a resource server. The resource server must
validate the token's issuer, audience, integrity or introspection result,
expiry, and scope, then apply local policy.[^oauth-rfc]

[Access policy and enforcement](access-policy-and-enforcement.md) explains the
decision and enforcement stages; [security properties and integrity](../foundations/security-properties-and-integrity.md)
explains why token protection has limits.

[^oauth-rfc]: IETF, [RFC 6749: The OAuth 2.0 Authorization Framework](https://www.rfc-editor.org/rfc/rfc6749).
