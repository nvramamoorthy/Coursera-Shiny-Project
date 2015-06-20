
shinyUI(fluidPage(
        titlePanel("Countywise Population Distribution in USA"),
        br(),
        br(),
        br(),
        br(),
        sidebarLayout(position="right",
                sidebarPanel(
                        h3("Input Selection"),
                        br(),
        
                        h4("This is an interactive map to show the Ethinic-wise and County-wise  population distribution as per your choice"),
                        h4("Please just select the ethinic group in the dropdowd test selection box and adjust the slider to choose the density range."),
                        
                        br(),
                        br(),
                        
                        
                        selectInput("var", 
                                    label = "Choose an Ethinic Group to from the dropdown",
                                    choices = c("White", "Black",
                                                "Hispanic", "Asian"),
                                    selected = "White"),
                        br(),
                        br(),
                        
                        sliderInput("range", 
                                    label = "Slide and Select Population Density Range :",
                                    min = 0, max = 100, value = c(0, 100)),
                        br(),
                        br(),
                        
                
                        img(src = "raman.png", height = 72, width = 72),
                        "The Creator ",
                        helpText("NV Ramamoorthy"),
                        helpText("Email: nvramamoorthy@gmail.com"),
                        helpText("Hyderabad, India")
                ),
                
                mainPanel(
                        h3("Population Heat Map of USA as per your Selection "),
                        br(),
                        br(),
                        br(),

                        textOutput("text1"),
                        textOutput("text2"),
                        
                        br(),
                        br(),
                        br(),
                        
                        plotOutput("map"))
        )
))
