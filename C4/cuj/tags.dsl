// UC_cupcake_order: a pony must be able to order a cupcake
!relationship "Relationship://Container://frontend.MyLittleWebApp -> Container://frontend.MyLittleBff (Makes API calls to)" {
    tags "UC_cupcake_order"
}
!relationship "Relationship://Container://frontend.MyLittleBff -> Container://MyLittleFactory.CupcakeFactory (Makes API calls to)" {
    tags "UC_cupcake_order"
}
!relationship "Relationship://Container://MyLittleFactory.CupcakeFactory -> Container://ponyManager.MyLittlePonyManager (Fetches pony data from)" {
    tags "UC_cupcake_order"
}
!relationship "Relationship://Container://MyLittleFactory.CupcakeFactory -> Container://MyLittleFactory.CupcakeFactoryDatabase (Reads from and writes to)" {
    tags "UC_cupcake_order"
}

// UC_cupcake_notification: finished cupcakes must send a notification
!relationship "Relationship://Container://MyLittleFactory.CupcakeFactory -> Container://MyLittleFactory.CupcakeTopic (Publishes events to)" {
    tags "UC_cupcake_notification"
}
!relationship "Relationship://Container://MyLittleFactory.CupcakeTopic -> Container://MyLittleFactory.MyLittleSpam (Delivers events to)" {
    tags "UC_cupcake_notification"
}
!relationship "Relationship://Container://MyLittleFactory.MyLittleSpam -> Container://MyLittleFactory.MyLittleSpamDatabase (Reads from and writes to)" {
    tags "UC_cupcake_notification"
}
