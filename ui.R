#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(datasets)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Cars - A deeper look into the variables DIST and SPEED"), 
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
      #implementing radio buttons       
        radioButtons("p", "Select the type of plot:",
                list("Scatter plot (visualize the relationship)"='a', "Box plot (check for outliers)"='b', "Density plot (distribution of variables)"='c'))

  ), 
    
    # Show the chosen chart
    mainPanel(
       plotOutput("chosenPlot")
    )
  )
))


