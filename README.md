# ereefs.github.io

This repository holds the content for the shared eReefs Platform website with overview information about the eReefs collaboration, and links to eReefs applications and data.

- [Website Content](#website-content)
  - [Content Pages](#content-pages)
  - [Collections](#collections)
  - [Navigation Menus](#navigation-menus)
  - [Page Footer](#page-footer)
  - [Page Meta](#page-meta)
  - [Visual Identity](#visual-identity)
- [Website Hosting](#website-hosting)
- [Development Environment](#development-environment)

---

## Website Content

All files related to the content and styling of this website are in the [./docs](./docs/) folder of this repository.  We use [Jekyll](https://docs.github.com/en/pages/setting-up-a-github-pages-site-with-jekyll) and [kramdown-style MarkDown](https://kramdown.gettalong.org/documentation.html) for the content of this website.

These pages also makes use of the remote-theme: Minimal Mistakes.  Please refer to the [Quick-Start Guide](https://mmistakes.github.io/minimal-mistakes/docs/quick-start-guide/) for more information about using this theme.

### Content Pages

MarkDown pages created in the [./docs](./docs/) folder will be converted to .html files by Jekyll and published in the [./docs/_site/](./docs/_site/) folder.  

e.g. a top-level page `./docs/<filename>.md` will be compiled to  `/_site/<filename>.html`, and will be available at `/filename.html` in the published website.

Any markdown files in subfolders where the subfolder name does *not* have an underscore (`_`) as a prefix will have the subfolder name as part of the URL for that page. 

e.g. a file at `./docs/<foldername>/<childname>.md` will end up compiled to `/_site/<foldername>/<childname>.html`, and will be available at `/<foldername>/<childname>.html` in the published website.

Each content page must have a header section which defines the meta-properties of the page, which may override the global defaults configured in the [_config.yml](./docs/_config.yml) file. Supported fields include:

- `classes: wide`: include this if you are *not* including `toc: true` to allow your content to take up the full width of the page.
- `header`: override the default page-banner for your section of the site.  Fields include:
  - `overlay_image`: the image to be used as the background for the banner
  - `caption`: the caption (photo credit) for the background image. 
- `layout`: one of `single` (for a single-column page: this is the default) or `splash` used for the landing / home page. See <https://mmistakes.github.io/minimal-mistakes/docs/layouts/> for all supported layouts.
- `permalink`: the site-relative URL that the page will be available at if this is different from the default URL derived from the name and location of the file.
- `title`: (Defaults to the section-title based on the path of your page)
- `toc`: whether a table of contents should be autogenerated for this page. If this is `true`, then the table of contents will be displayed on the right-hand sidebar.
- `toc_sticky`: whether the table of contents should always be kept in view when the page is scrolled.


&nbsp;

### Collections

Subfolders of the [./docs](./docs/) folder which have an underscore (`_`) prefix contain markdown snippets which contain the content for [collections](https://jekyllrb.com/docs/collections/).  These are groups of related content which can all be rendered together in a list on a page. 

Collection files are not rendered as individual pages on the site, but can be referenced on other pages as required. Please see the [Jekyll Collections Documentation](https://jekyllrb.com/docs/collections/) for information about how to use collections.

The site defines the following collections:

- [collaborators](./docs/_collaborators/): information about eReefs collaboration partners
- [funding](./docs/_funding): one snippet for each funding agency
- [tools](./docs/_tools): one snippet for each eReefs platform component that has its own URL

&nbsp;

### Navigation Menus

The Navigation structure for this website is defined in [docs/_data/navigation.yml](./docs/_data/navigation.yml)

The `main` list defined in that file is the primary eReefs navigation menu and appears on the left-hand side of the **titlebar** for the website. It should be replicated by all other eReefs websites in order for the various components of the eReefs platform to offer a common navigation structure.  Sub-menus are not supported.

The `sidebar` menu is displayed on the left-hand sidebar of most pages in the site (ones that don't use the `splash` layout). 

Tables of contents can be autogenerated from the heading-structure of a page and displayed in the right-hand sidebar by specifying `toc: true` in the header section of the page in question.  See <https://mmistakes.github.io/minimal-mistakes/docs/helpers/#table-of-contents> for more information about tables of contents.

&nbsp;

### Page Footer

The page footer that is common to all pages in the site is defined in [docs/_includes/footer/custom.html](./docs/_includes/footer/custom.html)


### Page Meta

Meta tags and any other content that should appear in the `<head/>` section of each page on the site can be added to the file at [docs/_includes/head/custom.html](./docs/_includes/head/custom.html).

This includes:

- Favicon
- Google Analytics
- Stylesheet references

&nbsp;

### Visual Identity

These pages make use of the `Minimal Mistakes` remote-theme to handle page layouts. Please refer to the [Quick-Start Guide](https://mmistakes.github.io/minimal-mistakes/docs/quick-start-guide/) for more information about using this theme.

The [eReefs Visual Identity](./VisualIdentity.md) is them imposed by a [site-specific stylesheet](./docs/assets/css/ereefs-overrides.css) that overrides the default theme styles.   This is included via the 

All stylesheets and images that support the look and feel of this site *and* other ereefs websites can be found in the [docs/assets](./docs/assets/) subdirectory of this repository.

---

## Website Hosting

This repository is configured as a [GitHub Pages](https://pages.github.com/) website.

The [docs](./docs/) content of the `main` branch of this repository is automatically published to `www.ereefs.org.au` when a new commit is pushed or merged to that branch.

Developers with administrator-level access to the repository can access the configuration for this publication workflow at <https://github.com/eReefs/ereefs.github.io/settings/pages>.

---

## Development Environment

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

If you are making changes to the site, you should make a feature-branch to work in, and ensure you test your changes in this way before committing them.   When you are ready, push your feature-branch to GitHub and make a pull-request against the `main` branch to get your changes published.
