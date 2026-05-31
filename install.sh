#!/bin/bash
set -e
G='\033[0;32m'; B='\033[0;34m'; R='\033[0;31m'; N='\033[0m'
REPO="tasheees/nb-remote-tools-8f4a2"
BASE="https://raw.githubusercontent.com/$REPO/main"
echo ""
echo -e "${B}╔═══════════════════════════════════════════════╗${N}"
echo -e "${B}║       AGenIOS Web Remote — Beta Install       ║${N}"
echo -e "${B}╚═══════════════════════════════════════════════╝${N}"
echo ""
[[ "$OSTYPE" != "darwin"* ]] && echo -e "${R}❌  macOS only.${N}" && exit 1
ARCH=$(uname -m)
BIN="agenios-mac-arm64"; [[ "$ARCH" == "x86_64" ]] && BIN="agenios-mac-x64"
echo -e "  ${G}✓${N} macOS / ${ARCH}"
echo -e "  Downloading AGenIOS..."
curl -fsSL "$BASE/$BIN" -o /tmp/agenios-setup
chmod +x /tmp/agenios-setup
xattr -d com.apple.quarantine /tmp/agenios-setup 2>/dev/null || true
echo -e "  ${G}✓${N} Ready\n"
exec < /dev/tty
/tmp/agenios-setup
