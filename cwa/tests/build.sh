#!/bin/sh

cargo +nightly -Z unstable-options build --target wasm32-unknown-unknown --out-dir . --release
wasm-gc cwa-tests.wasm
cp cwa-tests.wasm ../../cmd/cwa/testdata/test.wasm
