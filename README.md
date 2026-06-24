# ArtManip Project Page

Static GitHub Pages site for **ArtManip: Category-Level Articulated In-Hand Manipulation**.

## Structure

- `index.html` - single-page website with inline CSS and a small video-selector script.
- `fig_pipeline_full.png` - teacher-student training figure.
- `gen4.png` - initial configuration construction figure.
- `paper.pdf` - optional paper link target used by the hero button.
- `homepage/homepage.mp4` - main teaser video.
- `homepage/sim/` - simulation result videos.
- `homepage/crosscate/` - real-world cross-instance videos.
- `homepage/crossgrasp/` - real-world cross-initial-grasp videos.
- `homepage/long/` - real-world long-horizon videos.

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
