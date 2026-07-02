myLittleFactory = softwareSystem "MyLittleFactory" "Handles cupcake production and spam notifications." {
    !include myLittleFactory/cupcakeFactory/model.dsl
    !include myLittleFactory/myLittleSpam/model.dsl
}

!include myLittleFactory/cupcakeFactory/relationship.dsl
