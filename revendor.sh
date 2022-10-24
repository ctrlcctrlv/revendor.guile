#!/bin/bash
# This script lists all repositories you changed.
cargo clean
(cargo build 2>&1 | \
    grep -Po 'listed checksum of `.*?` has changed' | \
    grep -Po '`.*?`' | \
    sed 's/`//g') \
     | \
parallel "$(cat << 'EOF'
    # We want to find the nearest cargo package to the changed file.
    (cd $(dirname {}) && while [ ! -f 'Cargo.toml' ]; do
             cd ..
         done && basename "$(pwd)")
EOF
)" \
    | \
# Avoid regenerating same repo twice.
sort -u
