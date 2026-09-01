---
type: Software Engineering Practice
title: Configuration and environment parity
description: Separating deploy-specific configuration from code and reducing avoidable differences between development, test, and production.
tags: [software-engineering, configuration, environments, deployment, twelve-factor]
subject:
  - ontology: prov-o
    class: http://www.w3.org/ns/prov#Entity
    label: Entity
  - ontology: prov-o
    class: http://www.w3.org/ns/prov#Activity
    label: Activity
status: stable
generated: { by: "codex/gpt-5.6", at: "2026-09-01T11:11:00-07:00" }
sources:
  - id: twelve-factor-config
    resource: https://www.12factor.net/config
    title: The Twelve-Factor App, Config
  - id: twelve-factor-build-release-run
    resource: https://www.12factor.net/build-release-run
    title: The Twelve-Factor App, Build, release, run
---

# Separate code, configuration, and execution

Configuration is the set of values that varies between deploys, such as
service endpoints, credentials, feature settings, and resource handles. Keep
it out of source code and manage it through a controlled, auditable mechanism.
The Twelve-Factor App recommends environment-based configuration because it
can vary without rebuilding code and is independent of language and operating
system.[^twelve-factor-config] Secrets need additional protection: do not put
them in source control, logs, images, or untrusted process output.

Separate build, release, and run stages. Build an immutable artifact from a
known revision, combine it with the selected configuration in a release, and
run that release without silently changing its contents.[^twelve-factor-build-release-run]
Make configuration schema, defaults, validation, ownership, and change history
explicit.

# Reduce environment drift

Keep development, test, staging, and production as similar as the product's
risk and cost justify. Automate environment creation and validation; pin
dependencies and toolchains; expose differences instead of relying on
developer-specific global state. Test important behavior against the same
classes of backing services, permissions, network conditions, data shape, and
resource limits that production uses.

Parity reduces surprises but does not eliminate them. Production has unique
scale, traffic, failure, and security conditions, so combine parity with
[continuous integration](continuous-integration.md), [safe releases](continuous-delivery-and-safe-releases.md),
and [observability and operational readiness](observability-and-operational-readiness.md).

[^twelve-factor-config]: The Twelve-Factor App, [Config](https://www.12factor.net/config).
[^twelve-factor-build-release-run]: The Twelve-Factor App, [Build, release, run](https://www.12factor.net/build-release-run).
