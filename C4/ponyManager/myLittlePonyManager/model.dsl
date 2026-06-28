myLittlePonyManager = container "MyLittlePonyManager" "Core business logic for managing ponies." "Spring Boot / Kotlin"
myLittlePonyDb      = container "MyLittlePonyDb"      "Stores pony records." "PostgreSQL"

myLittlePonyManager -> myLittlePonyDb "Reads from and writes to" "JDBC"
