default: check

fmt:
	cargo fmt --all

check:
	cargo check --workspace --all-targets
	cargo check --manifest-path examples/dora_caterpillar/Cargo.toml --all-targets
	cargo check --manifest-path examples/horus_caterpillar/Cargo.toml --all-targets
