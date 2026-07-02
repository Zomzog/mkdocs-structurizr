workspace "My Little Architecture" "Architecture documentation for the frontend, ponyManager and myLittleFactory systems." {

    model {
        !include frontend/model.dsl
        !include ponyManager/model.dsl
        !include myLittleFactory/model.dsl
        !include cuj/tags.dsl
    }

    views {

        systemLandscape "SystemLandscape" "Overview of all software systems." {
            include *
            autoLayout
        }

        !include frontend/view.dsl
        !include ponyManager/view.dsl
        !include myLittleFactory/view.dsl
        !include cuj/view.dsl

        theme default
    }

}
