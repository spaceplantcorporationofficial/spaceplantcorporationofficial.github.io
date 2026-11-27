#!/bin/sh
# ASC Pilot installer: curl -fsSL https://spaceplantcorporationofficial.github.io/ascpilot/install.sh | sh
set -e
SRC="git+https://github.com/spaceplantcorporationofficial/ascpilot"
if command -v pipx >/dev/null 2>&1; then
  pipx install --force "$SRC"
elif command -v python3 >/dev/null 2>&1; then
  python3 -m pip install --user --upgrade "$SRC"
  echo "Installed with pip --user. Make sure $(python3 -m site --user-base)/bin is on your PATH."
else
  echo "ASC Pilot needs Python 3.9+ (python3)." >&2; exit 1
fi
echo ""
echo "Next:  ascpilot setup   then   ascpilot leaks"
