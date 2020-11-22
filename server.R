#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {

    output$distPlot <- renderPlot({

        # generate observations based on input$observations from ui.R
        x    <- faithful[, 2]
        observations <- seq(min(x), max(x), length.out = input$observations + 1)

        # draw the histogram with the specified number of observations
        hist(x, breaks = observations, col = 'blue', border = 'white')

    })

})
