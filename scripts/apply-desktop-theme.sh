#!/usr/bin/env bash

set -euo pipefail

HYPR_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
WAYBAR_ROOT="${HOME}/.config/waybar"
HYPR_SCRIPT="${HYPR_ROOT}/scripts/apply-hypr-theme.sh"
WAYBAR_SCRIPT="${WAYBAR_ROOT}/scripts/apply-waybar-preset.sh"

HYPR_THEME="${1:-gruvbox}"
WAYBAR_THEME="${2:-$HYPR_THEME}"
WAYBAR_LAYOUT="${3:-default}"

if [[ ! -x "${HYPR_SCRIPT}" ]]; then
    echo "Hypr theme script is missing or not executable: ${HYPR_SCRIPT}" >&2
    exit 1
fi

if [[ ! -x "${WAYBAR_SCRIPT}" ]]; then
    echo "Waybar preset script is missing or not executable: ${WAYBAR_SCRIPT}" >&2
    exit 1
fi

"${HYPR_SCRIPT}" "${HYPR_THEME}"
"${WAYBAR_SCRIPT}" "${WAYBAR_LAYOUT}" "${WAYBAR_THEME}"

echo "Applied desktop theme: hypr='${HYPR_THEME}', waybar='${WAYBAR_THEME}', layout='${WAYBAR_LAYOUT}'."
