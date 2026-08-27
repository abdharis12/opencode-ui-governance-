#!/usr/bin/env bash

set -euo pipefail

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
OPENCODE_ROOT="${HOME}/.config/opencode"

SOURCE_SKILLS="${REPO_ROOT}/skills"
SOURCE_AGENTS="${REPO_ROOT}/agents"

SOURCE_UI_GOVERNANCE="${SOURCE_SKILLS}/ui-governance"
SOURCE_FRONTEND_DESIGN="${SOURCE_SKILLS}/frontend-design"
SOURCE_UI_AUDITOR="${SOURCE_AGENTS}/ui-auditor.md"

TARGET_SKILLS="${OPENCODE_ROOT}/skills"
TARGET_AGENTS="${OPENCODE_ROOT}/agents"

TARGET_UI_GOVERNANCE="${TARGET_SKILLS}/ui-governance"
TARGET_FRONTEND_DESIGN="${TARGET_SKILLS}/frontend-design"
TARGET_UI_AUDITOR="${TARGET_AGENTS}/ui-auditor.md"

echo
echo "============================================"
echo " OpenCode UI Governance Installer"
echo "============================================"
echo

echo "Repository:"
echo "  ${REPO_ROOT}"
echo

echo "OpenCode global directory:"
echo "  ${OPENCODE_ROOT}"
echo

# ------------------------------------------------------------
# Validate source files
# ------------------------------------------------------------

REQUIRED_PATHS=(
    "${SOURCE_UI_GOVERNANCE}"
    "${SOURCE_FRONTEND_DESIGN}"
    "${SOURCE_UI_AUDITOR}"
)

for path in "${REQUIRED_PATHS[@]}"; do
    if [[ ! -e "${path}" ]]; then
        echo "ERROR: Required source not found:"
        echo "  ${path}"
        exit 1
    fi
done

FRONTEND_LICENSE="${SOURCE_FRONTEND_DESIGN}/LICENSE.txt"

if [[ ! -f "${FRONTEND_LICENSE}" ]]; then
    echo "WARNING: frontend-design LICENSE.txt was not found."
    echo "Make sure the required upstream license file is present."
    echo
fi

# ------------------------------------------------------------
# Create target directories
# ------------------------------------------------------------

mkdir -p "${TARGET_SKILLS}"
mkdir -p "${TARGET_AGENTS}"

# ------------------------------------------------------------
# Helper functions
# ------------------------------------------------------------

install_directory() {
    local source="$1"
    local destination="$2"
    local name="$3"

    echo "Installing ${name}..."

    if [[ -e "${destination}" ]]; then
        echo "  Existing installation detected."
        echo "  Replacing with repository version."

        rm -rf "${destination}"
    fi

    cp -R "${source}" "${destination}"

    echo "  Installed successfully."
}

install_file() {
    local source="$1"
    local destination="$2"
    local name="$3"

    echo "Installing ${name}..."

    if [[ -e "${destination}" ]]; then
        echo "  Existing installation detected."
    fi

    cp "${source}" "${destination}"

    echo "  Installed successfully."
}

# ------------------------------------------------------------
# Install UI Governance
# ------------------------------------------------------------

install_directory \
    "${SOURCE_UI_GOVERNANCE}" \
    "${TARGET_UI_GOVERNANCE}" \
    "ui-governance skill"

# ------------------------------------------------------------
# Install Frontend Design
# ------------------------------------------------------------

install_directory \
    "${SOURCE_FRONTEND_DESIGN}" \
    "${TARGET_FRONTEND_DESIGN}" \
    "frontend-design skill"

# ------------------------------------------------------------
# Install UI Auditor
# ------------------------------------------------------------

install_file \
    "${SOURCE_UI_AUDITOR}" \
    "${TARGET_UI_AUDITOR}" \
    "ui-auditor agent"

# ------------------------------------------------------------
# Verification
# ------------------------------------------------------------

echo
echo "Verifying installation..."

ALL_VALID=true

VERIFICATION_PATHS=(
    "${TARGET_UI_GOVERNANCE}"
    "${TARGET_FRONTEND_DESIGN}"
    "${TARGET_UI_AUDITOR}"
)

for path in "${VERIFICATION_PATHS[@]}"; do
    if [[ -e "${path}" ]]; then
        echo "  OK  ${path}"
    else
        echo "  FAIL ${path}"
        ALL_VALID=false
    fi
done

echo

if [[ "${ALL_VALID}" != "true" ]]; then
    echo "Installation verification failed."
    exit 1
fi

echo "============================================"
echo " Installation completed successfully."
echo "============================================"
echo

echo "Installed skills:"
echo "  ui-governance"
echo "  frontend-design"
echo

echo "Installed agent:"
echo "  ui-auditor"
echo

echo "Restart OpenCode after installation so the new"
echo "global skills and agent are discovered."
echo
