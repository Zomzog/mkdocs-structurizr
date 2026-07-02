// UC_cupcake_order: a pony must be able to order a cupcake
myLittleWebApp.tags "UC_cupcake_order"
myLittleBff.tags "UC_cupcake_order"
cupcakeFactory.tags "UC_cupcake_order"
myLittlePonyManager.tags "UC_cupcake_order"
cupcakeFactoryDatabase.tags "UC_cupcake_order"

webAppToBff.tags "UC_cupcake_order"
bffToCupcakeFactory.tags "UC_cupcake_order"
cupcakeFactoryToPonyManager.tags "UC_cupcake_order"
cupcakeFactoryToDatabase.tags "UC_cupcake_order"

// UC_cupcake_notification: finished cupcakes must send a notification
cupcakeFactory.tags "UC_cupcake_notification"
cupcakeTopic.tags "UC_cupcake_notification"
myLittleSpam.tags "UC_cupcake_notification"
myLittleSpamDatabase.tags "UC_cupcake_notification"

cupcakeFactoryToTopic.tags "UC_cupcake_notification"
topicToSpam.tags "UC_cupcake_notification"
spamToDatabase.tags "UC_cupcake_notification"
