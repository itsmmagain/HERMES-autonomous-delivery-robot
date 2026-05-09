# Contributing Guidelines

Thank you for contributing to HERMES.

## Workflow
1. Create a feature branch for each task.
2. Keep commits focused and descriptive.
3. Update relevant documentation when behavior, architecture, or interfaces change.
4. Open a pull request with:
   - Problem statement
   - Proposed solution
   - Validation evidence (tests, logs, or trial notes)

## Coding Standards
- **ROS 2 / C++**: follow ROS 2 style conventions and clear package boundaries.
- **Python**: prefer type hints and modular scripts.
- **Arduino**: keep real-time control loops deterministic and minimally blocking.

## Documentation Standards
- Place architecture/design updates under `docs/`.
- Place hardware updates under `hardware/`.
- Place research citations under `research/`.
- Place validation procedures and outcomes under `tests/`.

## Validation Expectations
- Run relevant local checks before PR submission.
- Capture test evidence in the PR description.
- For hardware experiments, include reproducible setup notes and observed outcomes.

## Security Expectations
- Preserve air-gapped assumptions in design decisions.
- Do not commit credentials, private identifiers, or sensitive office map data.
- Validate fail-secure behavior whenever lock control logic changes.
