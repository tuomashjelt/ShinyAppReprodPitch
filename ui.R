# This is the user-interface definition of a Shiny web application. 

library(shiny)
library(datasets)

# Define UI for application that draws chosen plots
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Cars - A deeper look into the variables DIST and SPEED"), 
  
  # Sidebar with radio buttons
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


