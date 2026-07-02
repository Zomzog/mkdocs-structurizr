# MyLittleSpam

MyLittleSpam sends notifications triggered by cupcake events, recording each one in
MyLittleSpamDatabase so ponies can look back at what they've been notified about.

## Critical User Journeys

### UC_cupcake_notification — finished cupcakes must send a notification

MyLittleSpam consumes finished-cupcake events from CupcakeTopic and sends the pony a notification,
recording it in MyLittleSpamDatabase.

```mermaid
--8<-- "CUJ_CupcakeFinishedNotification.mmd"
```
