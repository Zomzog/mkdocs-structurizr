cupcakeFactory         = container "CupcakeFactory"         "Manages cupcake production workflows."
cupcakeFactoryDatabase = container "CupcakeFactoryDatabase" "Stores cupcake production data." "PostgreSQL"
cupcakeTopic           = container "CupcakeTopic"           "Event stream for cupcake events." "Kafka"

cupcakeFactory -> cupcakeFactoryDatabase "Reads from and writes to" "JDBC"
cupcakeFactory -> cupcakeTopic           "Publishes events to" "Kafka"
cupcakeTopic   -> myLittleSpam           "Delivers events to" "Kafka"
