frontend = softwareSystem "frontend" "Serves the web UI and acts as a back-end for front-end (BFF) gateway." {
    !include myLittleBff/model.dsl
    !include myLittleWebApp/model.dsl
}

