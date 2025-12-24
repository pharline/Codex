#!/usr/bin/env bash
set -euo pipefail

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
html_file="${script_dir}/test.html"
file_url="file://${html_file}"

if command -v google-chrome >/dev/null 2>&1; then
  google-chrome --app="${file_url}" >/dev/null 2>&1 &
  exit 0
fi

if command -v chromium >/dev/null 2>&1; then
  chromium --app="${file_url}" >/dev/null 2>&1 &
  exit 0
fi

if command -v chrome >/dev/null 2>&1; then
  chrome --app="${file_url}" >/dev/null 2>&1 &
  exit 0
fi

if command -v msedge >/dev/null 2>&1; then
  msedge --app="${file_url}" >/dev/null 2>&1 &
  exit 0
fi

if command -v xdg-open >/dev/null 2>&1; then
  xdg-open "${file_url}" >/dev/null 2>&1 &
  exit 0
fi

if command -v open >/dev/null 2>&1; then
  open "${file_url}"
  exit 0
fi

echo "Não foi possível encontrar um navegador para abrir o app."
exit 1
