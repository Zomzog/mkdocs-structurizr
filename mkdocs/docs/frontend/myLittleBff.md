# MyLittleBff

**Technology:** Ktor

MyLittleBff is the back-end for front-end: it aggregates API calls and handles authentication on
behalf of [MyLittleWebApp](myLittleWebApp.md), delegating pony operations to MyLittlePonyManager and
cupcake operations to CupcakeFactory.

## Critical User Journeys

### UC_cupcake_order — a pony must be able to order a cupcake

MyLittleBff receives the order from MyLittleWebApp and makes the API call to CupcakeFactory to have
the cupcake produced.

```mermaid
--8<-- "CUJ_PonyOrdersCupcake.mmd"
```
