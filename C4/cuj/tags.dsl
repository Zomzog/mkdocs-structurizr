// UC_cupcake_order: a pony must be able to order a cupcake
myLittleWebApp.tags "UC_cupcake_order"
myLittleBff.tags "UC_cupcake_order"
cupcakeFactory.tags "UC_cupcake_order"
myLittlePonyManager.tags "UC_cupcake_order"
cupcakeFactoryDatabase.tags "UC_cupcake_order"

myLittleWebApp -> myLittleBff        "Makes API calls to"      "HTTP" { tags "UC_cupcake_order" }
myLittleBff    -> cupcakeFactory     "Makes API calls to"      "HTTP" { tags "UC_cupcake_order" }
cupcakeFactory -> myLittlePonyManager "Fetches pony data from" "HTTP" { tags "UC_cupcake_order" }
cupcakeFactory -> cupcakeFactoryDatabase "Reads from and writes to" "JDBC" { tags "UC_cupcake_order" }

// UC_cupcake_notification: finished cupcakes must send a notification
cupcakeFactory.tags "UC_cupcake_notification"
cupcakeTopic.tags "UC_cupcake_notification"
myLittleSpam.tags "UC_cupcake_notification"
myLittleSpamDatabase.tags "UC_cupcake_notification"

cupcakeFactory -> cupcakeTopic       "Publishes events to"      "Kafka" { tags "UC_cupcake_notification" }
cupcakeTopic   -> myLittleSpam       "Delivers events to"       "Kafka" { tags "UC_cupcake_notification" }
myLittleSpam   -> myLittleSpamDatabase "Reads from and writes to"       { tags "UC_cupcake_notification" }
