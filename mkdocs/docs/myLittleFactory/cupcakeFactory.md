# CupcakeFactory

CupcakeFactory manages cupcake production workflows: it receives orders, validates the requesting pony,
bakes the cupcake, and records the result in CupcakeFactoryDatabase. When a cupcake is finished, it
publishes an event to CupcakeTopic so downstream systems can react.

## Critical User Journeys

### UC_cupcake_order — a pony must be able to order a cupcake

CupcakeFactory receives the order from MyLittleBff, fetches the pony's data from MyLittlePonyManager
to validate the order, and persists the order to CupcakeFactoryDatabase.

```mermaid
--8<-- "CUJ_PonyOrdersCupcake.mmd"
```

### UC_cupcake_notification — finished cupcakes must send a notification

Once a cupcake is finished, CupcakeFactory publishes an event to CupcakeTopic, which delivers it to
MyLittleSpam so a notification can be sent.

```mermaid
--8<-- "CUJ_CupcakeFinishedNotification.mmd"
```
