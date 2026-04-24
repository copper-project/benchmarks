# benchmarks

[![CI](https://github.com/copper-project/benchmarks/actions/workflows/ci.yml/badge.svg)](https://github.com/copper-project/benchmarks/actions/workflows/ci.yml)
![GitHub last commit](https://img.shields.io/github/last-commit/copper-project/benchmarks)
![](https://img.shields.io/badge/Rust-1.95+-orange.svg)
[![dependency status](https://deps.rs/repo/github/copper-project/benchmarks/status.svg)](https://deps.rs/repo/github/copper-project/benchmarks)
[![License](https://img.shields.io/badge/license-Apache--2.0-blue.svg)](LICENSE)
[![Copper](https://img.shields.io/badge/Copper-master-b87333)](https://github.com/copper-project/copper-rs)

External benchmark and comparison workloads for Copper.

This repository is a benchmark satellite of
[`copper-project/copper-rs`](https://github.com/copper-project/copper-rs). It
holds side-by-side or interoperability-oriented comparisons that are useful to
keep around, but do not belong in the main Copper workspace or its canonical
example set.

This repository currently contains:

- `examples/cu_dorabench`: Copper-side benchmark matching `dora-rs/dora-benchmark`
- `examples/dora_caterpillar`: DORA version of the caterpillar benchmark
- `examples/horus_caterpillar`: Horus version of the caterpillar benchmark
- `examples/ros_zenoh_caterpillar`: ROS 2 + Zenoh comparison workspace

The Copper dependencies intentionally track the `master` branch of
[`copper-project/copper-rs`](https://github.com/copper-project/copper-rs). CI
can be triggered from the main Copper repository with the `copper-rs-master`
repository dispatch event.

## Links

- Main Copper runtime and SDK: [`copper-project/copper-rs`](https://github.com/copper-project/copper-rs)
- Copper documentation: <https://copper-project.github.io/copper-rs>
- Copper book: <https://copper-project.github.io/copper-rs-book/>

## Checks

```bash
just pr-check
```

`just pr-check` runs formatting verification, the benchmark compile checks, and
the `cu-dorabench` unit tests.

`just check` remains available when you only want the compile-smoke pass. CI
checks the Copper benchmark workspace plus the standalone DORA and Horus
comparison crates. The ROS 2 workspace under `examples/ros_zenoh_caterpillar`
is kept here as comparison material and is not built by the default CI job.

## License

This repository is licensed under the Apache License, Version 2.0.
