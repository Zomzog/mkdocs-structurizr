# mkdocs-structurizr

Architecture documentation for "My Little Architecture", modeled with [Structurizr DSL](https://structurizr.com)
under `C4/` and published as a documentation site with [MkDocs](https://www.mkdocs.org/).

## Running the docs site

```
docker compose up
```

This regenerates the C4 diagrams (including the Critical User Journey diagrams) from the DSL and
serves the docs at [http://localhost:8000](http://localhost:8000).

## Publishing to GitHub Pages

The [`Deploy MkDocs site to GitHub Pages`](.github/workflows/gh-pages.yml) workflow rebuilds the
diagrams with the Structurizr CLI, builds the site with MkDocs Material, and deploys it to GitHub
Pages on every push to `main` (or via manual dispatch). Enable Pages for this repository under
**Settings > Pages > Build and deployment > Source: GitHub Actions** to activate it.
