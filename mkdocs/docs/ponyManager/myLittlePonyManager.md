# MyLittlePonyManager

**Technology:** Spring Boot / Kotlin

MyLittlePonyManager owns the core business logic for managing ponies and persists their records to
MyLittlePonyDb. Other systems that need to know about a pony — who they are, what they're allowed to
order — come through here.

## Critical User Journeys

### UC_cupcake_order — a pony must be able to order a cupcake

Before CupcakeFactory can produce a cupcake, it fetches the requesting pony's data from
MyLittlePonyManager to confirm the order is valid.

```mermaid
--8<-- "CUJ_PonyOrdersCupcake.mmd"
```
