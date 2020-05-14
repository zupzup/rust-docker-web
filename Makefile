build:
	@cargo build

clean:
	@cargo clean

TESTS = ""
test:
	@cargo test $(TESTS) --offline --lib -- --color=always --nocapture

docs: build
	@cargo doc --no-deps

style-check:
	@rustup component add rustfmt 2> /dev/null
	cargo fmt --all -- --check

lint:
	@rustup component add clippy 2> /dev/null
	cargo clippy --all-targets --all-features -- -D warnings

dev:
	cargo run

alpine:
	@sudo docker build -t rust-alpine -f ./alpine/Dockerfile .

debian:
	@sudo docker build -t rust-debian -f ./debian/Dockerfile .

.PHONY: build test docs style-check lint alpine debian
