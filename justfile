default: pr-check

pr-check:
	just fmt-check
	just check
	just test

fmt:
	cargo fmt --all

fmt-check:
	cargo fmt --all -- --check

check:
	cargo check --workspace --all-targets
	cargo check --manifest-path examples/dora_caterpillar/Cargo.toml --all-targets
	cargo check --manifest-path examples/horus_caterpillar/Cargo.toml --all-targets

test:
	cargo test -p cu-dorabench --lib
