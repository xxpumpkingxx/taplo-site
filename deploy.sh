#!/bin/bash
git add -A
git commit -m "${1:-update site}"
git push origin main
echo "✅ Deployed. Live in ~30 seconds at taplo.org"
