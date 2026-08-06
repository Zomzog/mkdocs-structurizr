myLittleFactory = softwareSystem "MyLittleFactory" "Handles cupcake production and spam notifications." {
    !include cupcakeFactory/model.dsl
    !include myLittleSpam/model.dsl

    cupcakeTopic -> myLittleSpam "Delivers events to" "Kafka"
}

!include cupcakeFactory/relationship.dsl
