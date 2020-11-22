#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    titlePanel("General Observation of the feedbacks"),

    # Sidebar with a slider input for number of observations
    sidebarLayout(
        sidebarPanel(
            sliderInput("observations",
                        "Number of observations:",
                        min = 0,
                        max = 500,
                        value = 300)
        ),

        # Show a plot of the generated distribution
        mainPanel(
            plotOutput("distPlot")
        )
    )
))
