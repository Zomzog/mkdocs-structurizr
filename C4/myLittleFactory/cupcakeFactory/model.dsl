cupcakeFactory         = container "CupcakeFactory"         "Manages cupcake production workflows."
cupcakeFactoryDatabase = container "CupcakeFactoryDatabase" "Stores cupcake production data." "PostgreSQL"
cupcakeTopic           = container "CupcakeTopic"           "Event stream for cupcake events." "Kafka"

cupcakeFactoryToDatabase = cupcakeFactory -> cupcakeFactoryDatabase "Reads from and writes to" "JDBC"
cupcakeFactoryToTopic    = cupcakeFactory -> cupcakeTopic           "Publishes events to" "Kafka"
topicToSpam              = cupcakeTopic   -> myLittleSpam           "Delivers events to" "Kafka"
