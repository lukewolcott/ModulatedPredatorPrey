shinyUI(fluidPage(
      titlePanel("Plot Predator/Prey Cycle By Restricting Days"),
      h6("See README.md at LINK for some instructions on how to use this Shiny app."),
      sidebarLayout(
            sidebarPanel(
                  selectInput("dd_c", "Chemostat to plot:", 
                              choices=c("5b3high","5b3low","5o2",
                                        "5ohigh","5b2","5olow",
                                        "5r3","5g2","5y3high",
                                        "tan","5o3high","5o3low",
                                        "5y3low","5p4"), selected="5b2"),
                  sliderInput("slider","Choose range of days:",
                              0,250,value=c(10,100)),
                  textOutput("num_days"),
                  checkboxInput("l", "Check box for log scale", value=FALSE),
                  h4("Dictionary between chemostat and meandelta:"),
                  tableOutput("dict")
            ),
            mainPanel(
                  plotOutput("plot1"),
                  plotOutput("days")
            )
      )
))