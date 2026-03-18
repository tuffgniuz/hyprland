#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
THEME_NAME="${1:-gruvbox}"
THEME_DIR="${ROOT_DIR}/themes/${THEME_NAME}"

if [[ ! -d "${THEME_DIR}" ]]; then
    echo "Unknown theme: ${THEME_NAME}" >&2
    exit 1
fi

for file in style.conf hyprlock.conf hyprpaper.conf; do
    if [[ ! -f "${THEME_DIR}/${file}" ]]; then
        echo "Theme '${THEME_NAME}' is missing ${file}" >&2
        exit 1
    fi
done

cp "${THEME_DIR}/style.conf" "${ROOT_DIR}/style.conf"
cp "${THEME_DIR}/hyprlock.conf" "${ROOT_DIR}/hyprlock.conf"
cp "${THEME_DIR}/hyprpaper.conf" "${ROOT_DIR}/hyprpaper.conf"

hyprctl reload >/dev/null 2>&1 || true
pkill hyprpaper 2>/dev/null || true
nohup hyprpaper >/dev/null 2>&1 &

echo "Applied Hypr theme '${THEME_NAME}'."
