#!/usr/bin/env bash

set -euo pipefail

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
OPENCODE_ROOT="${HOME}/.config/opencode"

SOURCE_SKILLS="${REPO_ROOT}/skills"
SOURCE_AGENTS="${REPO_ROOT}/agents"

TARGET_SKILLS="${OPENCODE_ROOT}/skills"
TARGET_AGENTS="${OPENCODE_ROOT}/agents"

echo
echo "OpenCode UI Governance Installer"
echo "================================="
echo

mkdir -p "${TARGET_SKILLS}"
mkdir -p "${TARGET_AGENTS}"

echo "Installing ui-governance skill..."

rm -rf "${TARGET_SKILLS}/ui-governance"
cp -R "${SOURCE_SKILLS}/ui-governance" "${TARGET_SKILLS}/ui-governance"

echo "Installing ui-auditor agent..."

cp "${SOURCE_AGENTS}/ui-auditor.md" \
   "${TARGET_AGENTS}/ui-auditor.md"

echo
echo "Installation complete."
echo
echo "Installed to:"
echo "  ${OPENCODE_ROOT}"
echo
echo "Skill:"
echo "  ${TARGET_SKILLS}/ui-governance"
echo
echo "Agent:"
echo "  ${TARGET_AGENTS}/ui-auditor.md"
echo
