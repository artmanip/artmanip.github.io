#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."

# Keep the source clips; serve smaller, silent copies with streaming metadata first.
for group in crosscate crossgrasp long; do
  mkdir -p "homepage/web/$group"
  for source in "homepage/$group/"*.mp4; do
    name="$(basename "$source" .mp4)"
    target="homepage/web/$group/$name"
    if [ ! -f "$target.mp4" ]; then
      ffmpeg -v error -nostdin -n -i "$source" -map 0:v:0 -an \
        -vf "scale=720:1280:force_original_aspect_ratio=decrease:force_divisible_by=2" \
        -c:v libx264 -preset fast -crf 25 -pix_fmt yuv420p \
        -movflags +faststart "$target.mp4"
    fi
    if [ ! -f "$target.jpg" ]; then
      ffmpeg -v error -nostdin -n -i "$target.mp4" -frames:v 1 -q:v 4 "$target.jpg"
    fi
  done
done
