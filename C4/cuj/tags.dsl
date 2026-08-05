// UC_cupcake_order: a pony must be able to order a cupcake
!relationship relWebAppToBff {
    tags "UC_cupcake_order"
}
!relationship relBffToCupcakeFactory {
    tags "UC_cupcake_order"
}
!relationship relCupcakeFactoryToPonyManager {
    tags "UC_cupcake_order"
}
!relationship relCupcakeFactoryToDb {
    tags "UC_cupcake_order"
}

// UC_cupcake_notification: finished cupcakes must send a notification
!relationship relCupcakeFactoryToTopic {
    tags "UC_cupcake_notification"
}
!relationship relCupcakeTopicToSpam {
    tags "UC_cupcake_notification"
}
!relationship relSpamToSpamDb {
    tags "UC_cupcake_notification"
}
