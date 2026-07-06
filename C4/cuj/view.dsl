dynamicView * "CUJ_PonyOrdersCupcake" "A pony orders a cupcake." {
    myLittleWebApp -> myLittleBff "Places a cupcake order"
    myLittleBff -> cupcakeFactory "Submits the order"
    cupcakeFactory -> myLittlePonyManager "Validates the pony"
    cupcakeFactory -> cupcakeFactoryDatabase "Persists the order"
    autoLayout

    properties {
        "mermaid.sequenceDiagram" "true"
    }
}

dynamicView * "CUJ_CupcakeFinishedNotification" "A finished cupcake triggers a notification." {
    cupcakeFactory -> cupcakeTopic "Publishes a cupcake-finished event"
    cupcakeTopic -> myLittleSpam "Delivers the event"
    myLittleSpam -> myLittleSpamDatabase "Records the notification"
    autoLayout

    properties {
        "mermaid.sequenceDiagram" "true"
    }
}
