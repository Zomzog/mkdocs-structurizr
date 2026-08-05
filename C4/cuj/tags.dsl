// UC_cupcake_order: a pony must be able to order a cupcake
myLittleWebApp -> myLittleBff            "Order a cupcake in the frontend"       "HTTP" "UC_cupcake_order"
myLittleBff    -> cupcakeFactory         "Register the order in the factory"       "HTTP" "UC_cupcake_order"
cupcakeFactory -> myLittlePonyManager    "Add Pony's details to the order"   "HTTP" "UC_cupcake_order"
cupcakeFactory -> cupcakeFactoryDatabase "Save the order in database" "JDBC" "UC_cupcake_order"

// UC_cupcake_notification: finished cupcakes must send a notification
cupcakeFactory -> cupcakeTopic         "Notify an order is ready"      "Kafka" "UC_cupcake_notification"
cupcakeTopic   -> myLittleSpam         "Async notify the spam machine"       "Kafka" "UC_cupcake_notification"
myLittleSpam   -> myLittleSpamDatabase "Add the email to be sent 21 times in the database"         "UC_cupcake_notification"
