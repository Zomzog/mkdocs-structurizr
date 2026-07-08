# My Little Architecture

Welcome to the architecture documentation for **My Little Architecture** — the system that lets every
pony in Ponyville order a cupcake and get notified the moment it comes out of the oven.

The architecture is made up of three software systems:

- **frontend** — serves the web UI ponies use, and the BFF that talks to the backend systems on their behalf.
- **ponyManager** — the source of truth for pony records.
- **myLittleFactory** — cupcake production and the notifications that follow.

## Services

| System | Service | What it does |
| --- | --- | --- |
| frontend | [MyLittleWebApp](frontend/myLittleWebApp.md) | The single-page app ponies use to browse and order cupcakes. |
| frontend | [MyLittleBff](frontend/myLittleBff.md) | Aggregates and authenticates API calls on behalf of the web app. |
| ponyManager | [MyLittlePonyManager](ponyManager/myLittlePonyManager.md) | Manages pony records. |
| myLittleFactory | [CupcakeFactory](myLittleFactory/cupcakeFactory.md) | Runs cupcake production workflows. |
| myLittleFactory | [MyLittleSpam](myLittleFactory/myLittleSpam.md) | Sends notifications triggered by cupcake events. |

## Critical User Journeys

Every page below documents the services along with the Critical User Journeys (CUJs) they take part in.
Each CUJ is illustrated as a sequence diagram generated directly from the
[Structurizr](https://structurizr.com) C4 model under `C4/`, so it can never drift from the architecture:

- **`UC_cupcake_order`** — a pony must be able to order a cupcake.
- **`UC_cupcake_notification`** — finished cupcakes must send a notification.
