# Software engineering

* [Requirements engineering and acceptance](requirements-engineering-and-acceptance.md) - Discovering, specifying, validating, tracing, and managing software needs and acceptance evidence.
* [Version control and small reversible changes](version-control-and-small-reversible-changes.md) - Using shared revision history and focused changes to make software work understandable, reviewable, and recoverable.
* [Code review](code-review.md) - Evaluating a focused software change for design, behavior, maintainability, risk, and codebase health before integration.
* [Automated testing and test strategy](automated-testing-and-test-strategy.md) - Choosing layered, maintainable tests that provide timely evidence about software behavior and risk.
* [Continuous integration](continuous-integration.md) - Frequently integrating small changes into a shared mainline and automatically building and testing each integration.
* [Continuous delivery and safe releases](continuous-delivery-and-safe-releases.md) - Keeping software in a releasable state and using automated, observable, reversible paths to production.
* [Secure software development](secure-software-development.md) - Integrating security ownership, risk reduction, verification, and vulnerability response throughout the software lifecycle.
* [Threat modeling](threat-modeling.md) - Repeatedly modeling a system from an adversary's perspective to identify, prioritize, and mitigate security threats.
* [Reproducible builds and software provenance](reproducible-builds-and-provenance.md) - Making build inputs and processes inspectable so artifacts can be reproduced, traced, and verified.
* [Configuration and environment parity](configuration-and-environment-parity.md) - Separating deploy-specific configuration from code and reducing avoidable differences between development, test, and production.
* [Observability and operational readiness](observability-and-operational-readiness.md) - Designing software to emit actionable evidence and preparing teams and procedures to operate it safely.
* [Performance and capacity engineering](performance-and-capacity-engineering.md) - Defining performance needs, measuring behavior under realistic load, and adapting software and resources as demand changes.
* [Incident response and blameless postmortems](incident-response-and-blameless-postmortems.md) - Responding to service-impacting events and converting evidence about failure into concrete system improvements.
* [Maintainable code and refactoring](maintainable-code-and-refactoring.md) - Keeping software understandable and adaptable by controlling complexity and changing structure without changing intended behavior.
* [Architecture documentation and decisions](architecture-documentation-and-decisions.md) - Recording system structure, important constraints, trade-offs, and decisions so architecture remains understandable and reviewable.
* [Software delivery metrics and feedback](software-delivery-metrics-and-feedback.md) - Using outcome-oriented delivery and reliability measures to find constraints and guide continuous improvement.
* [API and interface design](api-and-interface-design.md) - Designing explicit, discoverable, evolvable contracts between software components and their users.
* [Accessibility as an engineering requirement](accessibility-as-an-engineering-requirement.md) - Designing, implementing, and testing software so people with diverse abilities can use it effectively.
* [Packages, interfaces, and environments](packages-interfaces-and-environments.md) - Components that interact through contracts within a build or runtime environment.
* [Version resolution and locks](version-resolution-and-locks.md) - Selecting a concrete dependency graph from constraints and recording it for repeatable use.
* [Software dependency and compatibility](software-dependency-and-compatibility.md) - Managing required components, version constraints, resolution, and runtime compatibility.
* [Domain-driven design](domain-driven-design.md) - Shaping software models and boundaries around the domain knowledge that gives a system its purpose and behavior.
* [Domain model](domain-model.md) - A selective model of domain concepts, relationships, rules, and behavior that guides software design.
* [Ubiquitous language](ubiquitous-language.md) - A shared domain vocabulary whose meanings remain consistent across conversation, documentation, tests, and code.
* [Subdomain](subdomain.md) - A meaningful part of a broader problem domain with a distinct purpose, capability, or set of rules.
* [Bounded context](bounded-context.md) - An explicit boundary within which a domain model and its language have consistent meaning.
* [Context map](context-map.md) - A documented view of relationships and integration arrangements between bounded contexts.
* [Shared kernel](shared-kernel.md) - A deliberately shared subset of a model or codebase maintained jointly by bounded contexts.
* [Published language](published-language.md) - A well-defined shared language or exchange model used to communicate across bounded-context boundaries.
* [Conformist integration](conformist-integration.md) - An integration arrangement in which a downstream context adopts an upstream model rather than translating it.
* [Anti-corruption layer](anti-corruption-layer.md) - A translation boundary that protects one domain model from an external model's concepts and constraints.
* [Entities](entities.md) - Domain objects whose identity persists across changes and distinguishes them from other objects.
* [Value objects](value-objects.md) - Immutable domain objects defined by their attributes rather than by persistent identity.
* [Aggregate](aggregate.md) - A consistency boundary that groups related domain objects and protects their invariants.
* [Aggregate root](aggregate-root.md) - The identity-bearing entry point through which external code accesses and changes an aggregate.
* [Domain services](domain-services.md) - Stateless domain operations that express meaningful behavior not naturally owned by one entity or value object.
* [Domain events](domain-events.md) - Records of significant domain occurrences that allow other parts of a model to react to a completed change.
* [Repositories](repositories.md) - Domain-oriented abstractions for retrieving and persisting aggregates without exposing storage details to the model.
