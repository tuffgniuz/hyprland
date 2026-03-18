#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
BIN_DIR="${HOME}/.local/bin"
TARGET_PATH="${BIN_DIR}/hypr-theme"
SOURCE_PATH="${ROOT_DIR}/scripts/apply-hypr-theme.sh"

mkdir -p "${BIN_DIR}"

cat > "${TARGET_PATH}" <<EOF
#!/usr/bin/env bash
exec "${SOURCE_PATH}" "\$@"
EOF

chmod +x "${TARGET_PATH}"

echo "Installed hypr-theme to ${TARGET_PATH}"
