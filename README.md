# mkdocs-structurizr

Architecture documentation for "My Little Architecture", modeled with [Structurizr DSL](https://structurizr.com)
under `C4/` and published as a documentation site with [MkDocs](https://www.mkdocs.org/).

## Running the docs site

```
docker compose up
```

This regenerates the C4 diagrams (including the Critical User Journey diagrams) from the DSL and
serves the docs at [http://localhost:8000](http://localhost:8000).
