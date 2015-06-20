
shinyUI(fluidPage(
        titlePanel("Countywise Population Distribution in USA"),
        br(),
        br(),
        br(),
        br(),
        sidebarLayout(
                sidebarPanel(
                        helpText("This is an interactive map to show the population distribution as per your choice"),
                        br(),
                        br(),
                        br(),
                        br(),
                        
                        selectInput("var", 
                                    label = "Choose an Ethinic Group to from the dropdown",
                                    choices = c("White", "Black",
                                                "Hispanic", "Asian"),
                                    selected = "White"),
                        br(),
                        br(),
                        br(),
                        br(),
                        
                        sliderInput("range", 
                                    label = "Range of interest:",
                                    min = 0, max = 100, value = c(0, 100)),
                        br(),
                        br(),
                        br(),
                        br(),
                        img(src = "raman.png", height = 72, width = 72),
                        "The Creator ",
                        helpText("NV Ramamoorthy"),
                        helpText("Email: nvramamoorthy@gmail.com"),
                        helpText("Hyderabad, India")
                ),
                
                mainPanel(
                        textOutput("text1"),
                        textOutput("text2"),
                        
                        plotOutput("map"))
        )
))
