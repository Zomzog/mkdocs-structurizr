myLittleWebApp = container "MyLittleWebApp" "Single-page application delivered to the browser." "React"

webAppToBff = myLittleWebApp -> myLittleBff "Makes API calls to" "HTTP"
