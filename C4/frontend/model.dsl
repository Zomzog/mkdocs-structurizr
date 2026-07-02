frontend = softwareSystem "frontend" "Serves the web UI and acts as a back-end for front-end (BFF) gateway." {
    !include frontend/myLittleWebApp/model.dsl
    !include frontend/myLittleBff/model.dsl
}

!include frontend/myLittleBff/relationship.dsl
