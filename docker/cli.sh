#!/bin/sh
set -eu
base="https://aimetadatacleaner.pro"
cmd="${1:-}"
case "$cmd" in
  home)
    printf "%s\n" "$base/"
    ;;
  page)
    case "${2:-}" in
      detect) printf '%s\n' "$base/detect" ;;
      blog) printf '%s\n' "$base/blog" ;;
      remove-exif) printf '%s\n' "$base/remove-exif" ;;
      remove-gps) printf '%s\n' "$base/remove-gps" ;;
      remove-c2pa) printf '%s\n' "$base/remove-c2pa" ;;
      *) echo "unknown page" >&2; exit 2 ;;
    esac
    ;;
  tool)
    case "${2:-}" in
      clean-image-metadata|clean-video-metadata|clean-pdf-metadata|batch-metadata-cleaner|fingerprint-protection)
        printf '%s\n' "$base/${2}"
        ;;
      *) echo "unknown tool" >&2; exit 2 ;;
    esac
    ;;
  *)
    echo "usage: aimetadatacleaner-url-tools home | page <name> | tool <slug>" >&2
    exit 2
    ;;
esac
