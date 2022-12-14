# ereefs.github.io

This repository holds the content for the shared eReefs Platform website with overview information about the eReefs collaboration, and links to eReefs applications and data.

## Website Content

All files related to the content and styling of this website are in the [./docs](./docs/) folder of this repository.  We use [Jekyll](https://docs.github.com/en/pages/setting-up-a-github-pages-site-with-jekyll) and [kramdown-style MarkDown](https://kramdown.gettalong.org/documentation.html) for the content of this website.

These pages also makes use of the remote-theme: Minimal Mistakes.  Please refer to the [Quick-Start Guide](https://mmistakes.github.io/minimal-mistakes/docs/quick-start-guide/) for more information about using this theme.

MarkDown pages created in the ./docs folder will be converted to .html files by Jekyll and published in the ./docs/_site/ folder.  All folders without an underscore prefix will be copied with MarkDown files within these converted to /_site/folder/filename.html.  For example [./docs/platform/catchment-flow-and-wq-forecasting.md](/docs/platform/catchment-flow-and-wq-forecasting.md) will be converted to /_site/platform/catchment-flow-and-wq-forecasting.html

Changes to navigation bar and side bars can be done by modifying the [navigation.yml](./docs/_data/navigation.yml) file where navigation structures are stored.

---

## Dockerised Local Development Environment setup

The root of this repository contains files to help you develop this website offline using [docker](https://www.docker.com/) and [docker compose](https://docs.docker.com/compose/).

To run a development copy of the site:

```bash
git clone git@github.com:eReefs/ereefs.github.io.git
cd ereefs.github.io
docker compose build
docker compose up
```

The site will be available to you at [http://localhost:4000/]

Changes that you make to the content files in the [./docs](./docs/) folder will be
automatically available to you as soon as you refresh each page.
