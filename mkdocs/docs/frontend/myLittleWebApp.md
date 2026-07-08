# MyLittleWebApp

**Technology:** React

MyLittleWebApp is the single-page application every pony opens in their browser to browse the cupcake
menu, place an order, and see their order history. It never talks to backend systems directly — every
request goes through [MyLittleBff](myLittleBff.md).

## Critical User Journeys

### UC_cupcake_order — a pony must be able to order a cupcake

A pony opens MyLittleWebApp, picks a cupcake, and submits an order. The web app calls MyLittleBff,
which forwards the order to CupcakeFactory for production.

```mermaid
--8<-- "CUJ_PonyOrdersCupcake.mmd"
```
