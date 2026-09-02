---
type: Software Engineering Practice
title: Performance and capacity engineering
description: Defining performance needs, measuring behavior under realistic load, and adapting software and resources as demand changes.
tags: [software-engineering, performance, capacity, load-testing, scalability]
subject: []
subject_review:
  status: pending
  reason: no-suitable-authoritative-class
  reviewed:
    by: "codex/gpt-5.6"
    at: "2026-09-02T13:51:36-07:00"
  checked_catalog_keys:
    - cbv-2.0.0
    - ctdlasn-20260626-turtle
    - eco
    - epcis-2.0.1
    - iao-2026-03-30
    - mls-1.0
    - obi-2026-07-27
    - odrl-2.2
    - ontomathpro-v2-acb3eef1
    - org-0.8
    - prov-o
    - sosa-2017-10-19
    - spdx-3.0.1
    - swo-2023-03-05
status: stable
generated: { by: "codex/gpt-5.6", at: "2026-09-02T13:51:36-07:00" }
sources:
  - id: google-performance
    resource: https://docs.cloud.google.com/architecture/framework/performance-optimization
    title: Google Cloud Well-Architected Framework, Performance optimization pillar
    author: "google-cloud/architecture-framework"
  - id: google-sre-capacity
    resource: https://sre.google/sre-book/service-best-practices/
    title: Google SRE, Production Services Best Practices
    author: "google/sre-book"
  - id: google-sre-overload
    resource: https://sre.google/sre-book/addressing-cascading-failures/
    title: Google SRE, Addressing Cascading Failures
    author: "google/sre-book"
---

# Define performance as a requirement

Performance engineering treats latency, throughput, resource use, concurrency,
and capacity as properties to design and manage—not numbers to optimize after
users complain. Define targets in terms of important user journeys and system
conditions, including workload shape, data size, concurrency, geographic
distribution, and acceptable degradation. Google’s performance guidance
recommends defining granular requirements, designing for elasticity, and
continuously monitoring and improving performance.[^google-performance]

Measure representative baselines and bottlenecks, then test realistic normal,
peak, burst, and overload conditions. Use load testing to relate resources to
service capacity; do not infer future capacity from historical intuition or a
single small benchmark.[^google-sre-capacity] Test failure behavior too:
timeouts, queues, backpressure, rate limits, graceful degradation, and load
shedding can determine whether overload becomes a local slowdown or a
cascading failure.[^google-sre-overload]

# Close the loop

Monitor production behavior, compare it with the requirements, forecast
organic and planned demand, and revisit architecture, algorithms, data access,
resource allocation, and cost as conditions change. Optimize the limiting
constraint rather than chasing an isolated metric. Record workload assumptions
so measurements remain interpretable.

Performance evidence should inform [requirements engineering and acceptance](requirements-engineering-and-acceptance.md),
[automated testing and test strategy](automated-testing-and-test-strategy.md),
and [observability and operational readiness](observability-and-operational-readiness.md).

[^google-performance]: Google Cloud, [Performance optimization pillar](https://docs.cloud.google.com/architecture/framework/performance-optimization).
[^google-sre-capacity]: Google SRE, [Production Services Best Practices](https://sre.google/sre-book/service-best-practices/).
[^google-sre-overload]: Google SRE, [Addressing Cascading Failures](https://sre.google/sre-book/addressing-cascading-failures/).
