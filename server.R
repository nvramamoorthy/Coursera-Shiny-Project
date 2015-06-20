#setwd("~/Desktop/DataProduct/Proj-3")

library(shiny)
library(maps)
library(mapproj)
source("helpers.R",keep.source = TRUE) 
counties <- readRDS("counties.rds")


shinyServer(
        function(input, output) {
                
                
                output$text1 <- renderText({ 
                        paste("You have selected", input$var)
                })
                
                output$text2 <- renderText({ 
                        paste("You have chosen a range that goes from",
                              input$range[1], "to", input$range[2])
                })
                
                output$map <- renderPlot({
                        args <- switch(input$var,
                                       "White" = list(counties$white, "darkgreen", "% White"),
                                       "Black" = list(counties$black, "black", "% Black"),
                                       "Hispanic" = list(counties$hispanic, "darkorange", "% Hispanic"),
                                       "Asian" = list(counties$asian, "red", "% Asian"))
                        
                        args$min <- input$range[1]
                        args$max <- input$range[2]
                        
                        do.call(percent_map, args)
                })
        }
)

