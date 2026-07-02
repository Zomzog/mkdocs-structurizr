myLittleWebApp = container "MyLittleWebApp" "Single-page application delivered to the browser." "React"

myLittleWebApp -> myLittleBff "Makes API calls to" "HTTP"
