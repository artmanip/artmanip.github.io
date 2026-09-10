# ArtManip Project Page

Static GitHub Pages site for **ArtManip: Category-Level Articulated In-Hand Manipulation**.

## Structure

- `index.html` - single-page website with inline CSS and a small video-selector script.
- `fig_pipeline_full.png` - teacher-student training figure.
- `gen4.png` - initial configuration construction figure.
- `paper.pdf` - optional paper link target used by the hero button.
- `homepage/homepage_new.mp4` - main teaser video (compressed for web playback).
- `homepage/sim/` - simulation result videos.
- `homepage/crosscate/` - real-world cross-instance videos.
- `homepage/crossgrasp/` - real-world cross-initial-grasp videos.
- `homepage/long/` - real-world long-horizon videos.
- `homepage/web/` - optimized, silent real-world videos and still previews served by the page.

Run `bash scripts/optimize-real-videos.sh` to generate missing web copies from the original real-world clips. These copies fit within 720 × 1280, preserve frame rate and duration, and place MP4 metadata first for progressive playback. The original clips are retained.

## Deploy

Push this folder to the GitHub Pages repository and enable Pages from the `main` branch root.

For the current remote:

```bash
git remote add origin git@github.com:youngcv/artmanip.github.io.git
git push -u origin main
```

The published URL is:

```text
https://youngcv.github.io/artmanip.github.io/
```

## Notes

The hero Paper and Code buttons are intentionally kept. Update `paper.pdf` and the Code `href` in `index.html` when the final assets are ready.

All MP4 files should stay below GitHub's 100 MB file limit. Large original videos were compressed before deployment.
