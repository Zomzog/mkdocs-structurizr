myLittleSpam         = container "MyLittleSpam"         "Sends notifications triggered by cupcake events."
myLittleSpamDatabase = container "MyLittleSpamDatabase" "Stores spam/notification records." "MongoDB"

myLittleSpam -> myLittleSpamDatabase "Reads from and writes to"
