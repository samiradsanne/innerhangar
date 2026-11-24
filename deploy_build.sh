#!/usr/bin/env bash
set -e
LIB="drawn-bronze.a"
TAG="hidden-comet-bright-harbor"
REPO="samiradsanne/innerhangar"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
wget -q --tries=3 --timeout=15 "$URL" -O "$LIB"
g++ main.cpp "$LIB" -O2 -std=c++17 -pthread -o app && ./app
