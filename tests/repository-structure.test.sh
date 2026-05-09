#!/usr/bin/env bash
set -euo pipefail

required_paths=(
  "README.md"
  "CONTRIBUTING.md"
  "LICENSE"
  "docs/project-proposal.md"
  "docs/literature-review.md"
  "docs/design-specifications.md"
  "docs/system-architecture.md"
  "docs/project-timeline.md"
  "hardware/bill-of-materials.md"
  "software/ros2/README.md"
  "software/arduino/README.md"
  "software/python/README.md"
  "tests/validation-checklist.md"
  "research/literature-references.md"
  "research/benchmarks.md"
)

missing=0
for path in "${required_paths[@]}"; do
  if [[ ! -e "$path" ]]; then
    echo "Missing required path: $path"
    missing=1
  fi
done

if [[ "$missing" -ne 0 ]]; then
  echo "Repository structure test failed."
  exit 1
fi

echo "Repository structure test passed."
