#!/usr/bin/env bash
set -euo pipefail
if [ $# -lt 3 ]; then
  echo "Uso: ./scripts/new-post.sh <slug> <es|en> <categoria> [tag1,tag2]"
  exit 1
fi
SLUG="$1"
LANG="$2"
CATEGORY="$3"
TAGS="${4:-general}"
DATE=$(date +%Y-%m-%d)
FILE="src/content/blog/${SLUG}.md"
if [ -f "$FILE" ]; then
  echo "Ya existe: $FILE"; exit 1
fi
cat > "$FILE" <<EOF
---
title: ""
description: ""
lang: ${LANG}
category: ${CATEGORY}
tags: ["${TAGS//,/\", \"}"]
heroImage: ../../assets/blog-placeholder-1.jpg
pubDate: ${DATE}
draft: true
---

Escribe aquí.
EOF
echo "Creado: $FILE"
