workspace "My Little Architecture" "Architecture documentation for the frontend, ponyManager and myLittleFactory systems." {

    model {

        frontend = softwareSystem "frontend" "Serves the web UI and acts as a back-end for front-end (BFF) gateway." {

            myLittleWebApp = container "MyLittleWebApp" "Single-page application delivered to the browser." "React"
            myLittleBff    = container "MyLittleBff"    "Back-end for front-end; handles API aggregation and auth." "Ktor"

            myLittleWebApp -> myLittleBff "Makes API calls to" "HTTP"
        }

        ponyManager = softwareSystem "ponyManager" "Manages pony records and persists them to a relational database." {

            myLittlePonyManager = container "MyLittlePonyManager" "Core business logic for managing ponies." "Spring Boot / Kotlin"
            myLittlePonyDb      = container "MyLittlePonyDb"      "Stores pony records." "PostgreSQL"

            myLittlePonyManager -> myLittlePonyDb "Reads from and writes to" "JDBC"
        }

        myLittleFactory = softwareSystem "MyLittleFactory" "Handles cupcake production and spam notifications." {

            cupcakeFactory        = container "CupcakeFactory"        "Manages cupcake production workflows."
            cupcakeFactoryDatabase = container "CupcakeFactoryDatabase" "Stores cupcake production data." "PostgreSQL"
            cupcakeTopic          = container "CupcakeTopic"          "Event stream for cupcake events." "Kafka"
            myLittleSpam          = container "MyLittleSpam"          "Sends notifications triggered by cupcake events."
            myLittleSpamDatabase  = container "MyLittleSpamDatabase"  "Stores spam/notification records." "MongoDB"

            cupcakeFactory        -> cupcakeFactoryDatabase "Reads from and writes to" "JDBC"
            cupcakeFactory        -> cupcakeTopic           "Publishes events to" "Kafka"
            cupcakeTopic          -> myLittleSpam           "Delivers events to" "Kafka"
            myLittleSpam          -> myLittleSpamDatabase   "Reads from and writes to"
        }

        myLittleBff     -> myLittlePonyManager "Delegates pony operations to" "HTTP"
        cupcakeFactory  -> myLittlePonyManager "Fetches pony data from" "HTTP"
        myLittleBff     -> cupcakeFactory      "Makes API calls to" "HTTP"

    }

    views {

        systemLandscape "SystemLandscape" "Overview of all software systems." {
            include *
            autoLayout
        }

        systemContext frontend "SystemContext_frontend" "Context view for the frontend system." {
            include *
            autoLayout
        }

        systemContext ponyManager "SystemContext_ponyManager" "Context view for the ponyManager system." {
            include *
            autoLayout
        }

        container frontend "Containers_frontend" "Container-level view of the frontend system." {
            include *
            autoLayout
        }

        container ponyManager "Containers_ponyManager" "Container-level view of the ponyManager system." {
            include *
            autoLayout
        }

        systemContext myLittleFactory "SystemContext_myLittleFactory" "Context view for the myLittleFactory system." {
            include *
            autoLayout
        }

        container myLittleFactory "Containers_myLittleFactory" "Container-level view of the myLittleFactory system." {
            include *
            autoLayout
        }

        theme default
    }

}
