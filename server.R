library(shiny)
library(ggplot2)
library(dplyr)
library(plotly)

shinyServer(function(input,output) {
      # read in data
      data <- read.csv("data_cleaned.csv")
      data$logChlorella <- log10(data$Chlorella)
      data$logBrachionus <- log10(data$Brachionus)
      
      # plot ring
      output$plot1 <- renderPlot({
            d <- filter(data, chemostat == input$dd_c)
            d <- filter(d,(day.>=input$slider[1] & day.<=input$slider[2]))
            g <- ggplot(d, aes(color=as.factor(meandelta)))+
                  labs(title=paste("Number of points:",as.character(dim(d)[1])))
            if (input$l)
                  g + geom_point(aes(logChlorella, logBrachionus))
            else
                  g + geom_point(aes(Chlorella, Brachionus))
      })
      
      # output dictionary
      output$dict <- renderTable({
            f <- data[,c("chemostat","meandelta")]
            arrange(unique(f),desc(meandelta))
      })
      
      # output sampling days data
      output$days <- renderPlot({
            g <- ggplot(data, aes(x=day., y=as.factor(meandelta)))
            g <- g + labs(x="Days",y="Delta",title="Sampling Days")
            g + geom_point()
            
      })
      
      # output number of days in slider
      output$num_days <- renderText({
            n <- as.character(input$slider[2] - input$slider[1])
            paste("(",n,"days)")
      })
      
})