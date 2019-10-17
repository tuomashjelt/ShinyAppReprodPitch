# This is the server logic of a Shiny web application.

library(shiny)

# Define server logic required to draw plots
shinyServer(function(input, output) {
   
        output$chosenPlot <- renderPlot({
          
        if(input$p=='a'){
                par(mfrow=c(1, 1)) # 1 column
                scatter.smooth(x=cars$speed, y=cars$dist, main="Dist ~ Speed")  # scatterplot 
        }     
        if(input$p=='b'){       
                par(mfrow=c(1, 2))  # 2 columns
                boxplot(cars$speed, main="Speed")  # box plot for speed
                boxplot(cars$dist, main="Distance")  # box plot for distance
        }    
        if(input$p=='c'){       
                
                par(mfrow=c(1, 2))  # in 2 columns
                plot(density(cars$speed), main="Density Plot: Speed", ylab="Frequency")  # density plot for 'speed'
                polygon(density(cars$speed), col="grey")
                
                plot(density(cars$dist), main="Density Plot: Distance", ylab="Frequency")  # density plot for 'dist'
                polygon(density(cars$dist), col="grey")
        }     

  })
  
})
