cupcakeFactory         = container "CupcakeFactory"         "Manages cupcake production workflows."
cupcakeFactoryDatabase = container "CupcakeFactoryDatabase" "Stores cupcake production data." "PostgreSQL"
cupcakeTopic           = container "CupcakeTopic"           "Event stream for cupcake events." "Kafka"

relCupcakeFactoryToDb    = cupcakeFactory -> cupcakeFactoryDatabase "Reads from and writes to" "JDBC"
relCupcakeFactoryToTopic = cupcakeFactory -> cupcakeTopic           "Publishes events to" "Kafka"
