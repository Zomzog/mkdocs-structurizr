# Claude Code Conventions

## C4 Structurizr Workspace

Architecture diagrams live under `C4/` and follow a per-service folder structure.

### Folder layout

```
C4/
  workspace.dsl              # Root workspace — one !include per system (model + view)
  <system>/
    model.dsl                # softwareSystem declaration + !include for each service model/relationship
    view.dsl                 # systemContext and container views for this system
    <service>/
      model.dsl              # Container definition(s) and intra-service relationships (service → its own DB, etc.)
      view.dsl               # (optional) Component-level diagrams for this service — create only when needed
      relationship.dsl       # (only if needed) Cross-service relationships this service participates in
```

### `<system>/model.dsl`
Declares the `softwareSystem` block and uses `!include` to pull in each service's `model.dsl` and `relationship.dsl`.

### `<service>/model.dsl`
Define this service's container(s), any storage it directly owns, and intra-service relationships
(e.g., `myService -> myServiceDb`).

### `<system>/view.dsl`
`systemContext` and `container` views for the system. Always present.

### `<service>/view.dsl`
Component-level (C4 Level 3) diagrams scoped to this service. Create only when component diagrams exist.

### `<service>/relationship.dsl`
**Create only when a relationship cannot be expressed inside `model.dsl`** (i.e., it crosses **system** boundaries).
Always written from the consuming service's perspective:
- `externalTopic --> thisService "..." "Kafka"` — this service consumes a Kafka topic owned by another system
- `thisService --> externalService "..." "HTTP"` — this service calls a service in another system

Intra-system relationships (both containers in the same `softwareSystem`) always go in `model.dsl`.
Never add a relationship here if it can live in `model.dsl`. Do not create the file if it would be empty.

## Updating These Rules

Whenever a new architectural convention or pattern is introduced, **always ask the user whether
this CLAUDE.md should be updated** to reflect the new rule before applying it.
