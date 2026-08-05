frontend = softwareSystem "frontend" "Serves the web UI and acts as a back-end for front-end (BFF) gateway." {
    !include myLittleWebApp/model.dsl
    !include myLittleBff/model.dsl
}

!include myLittleBff/relationship.dsl
