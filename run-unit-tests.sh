#!/bin/bash

set -e

SWIFT_VERSION=$(<.swift-version)

# Run unit tests
docker run \
    --rm \
    --volume "$(pwd):/app" \
    --workdir /app \
    smithmicro/swift:$SWIFT_VERSION \
    swift test --build-path .build/native