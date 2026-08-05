frontend = softwareSystem "frontend" "Serves the web UI and acts as a back-end for front-end (BFF) gateway." {
    !include myLittleWebApp/model.dsl
    !include myLittleBff/model.dsl

    relWebAppToBff = myLittleWebApp -> myLittleBff "Makes API calls to" "HTTP"
}

!include myLittleBff/relationship.dsl
