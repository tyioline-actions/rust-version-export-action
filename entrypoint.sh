#!/bin/sh -l

# grep the version from Cargo.toml
PACKAGE_VERSION=$(grep -E '^version =' Cargo.toml | sed 's/version = "//;s/"//')

echo "Extracted Rust package version: $PACKAGE_VERSION"

# Set the output variable
echo "::set-output name=version::$PACKAGE_VERSION"
