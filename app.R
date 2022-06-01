library(shiny)
library(shinydashboard)
library(plotly)
library(datasets)

blood <- read.csv("blood-transfusion-service-center.csv")

ui <- fluidPage(
  dashboardPage(
    dashboardHeader(title = "Blood Donor Prediction Model", titleWidth = 500),
    
    dashboardSidebar(
      sidebarMenu(
        menuItem("Analysis on Blood Donor", tabName = "charts", icon=icon("check"))
      ),
      sidebarMenu(
        menuItem("Tab 2", tabName = "charts1", icon=icon("check"))
      ),
      sidebarMenu(
        menuItem("tab 3", tabName = "charts2", icon=icon("check"))
      )
    ),
    
    
    dashboardBody(
      # within tabitems(), define the pages for sidebar menu items
      tabItems(
        ## Using box to display plots
        tabItem(tabName = "charts",
                fluidRow(
                  tabBox(id="tabchart1",
                         tabPanel("Analysis on Blood Donor", plotlyOutput("plot1")),
                         
                  )
                )
                
        )
        ##tabItem(tabName = "charts1",
        ##        fluidRow(
        ##          tabBox(id="tabchart2",
        ##                 tabPanel("Analysis on Blood Donor", plotlyOutput("plot1")),
        
        ##          )
        ##        )
        
      )
    )
  )
)




server <- function(input, output, session){
  ## Plotly Scatter Plot
  output$plot1 <- renderPlotly({
    plot_ly(data=blood, 
            x=~V1, 
            y=~Class,
            type = "histogram")
  })
  
  
  ## Plotly Histogram
  output$plot2 <- renderPlotly({
    plot_ly(data=blood,
            x=~V2, 
            y=~class, 
            type="histogram")
    
  })
  
  
  ##output$plot3 <- renderPlotly({
  ##plot_ly(data=mtcars, 
  ##x=~hp, 
  ##y=~mpg,
  ##type = "scatter",
  ##mode = "markers")
  
  ##})
  
  
}


shinyApp(ui = ui, server = server)library(shiny)
library(shinydashboard)
library(plotly)
library(datasets)

blood <- read.csv("blood-transfusion-service-center.csv")

ui <- fluidPage(
  dashboardPage(
    dashboardHeader(title = "Blood Donor Prediction Model", titleWidth = 500),
    
    dashboardSidebar(
      sidebarMenu(
        menuItem("Analysis on Blood Donor", tabName = "charts", icon=icon("check"))
      ),
      sidebarMenu(
        menuItem("Tab 2", tabName = "charts1", icon=icon("check"))
      ),
      sidebarMenu(
        menuItem("tab 3", tabName = "charts2", icon=icon("check"))
      )
    ),
    
    
    dashboardBody(
      # within tabitems(), define the pages for sidebar menu items
      tabItems(
        ## Using box to display plots
        tabItem(tabName = "charts",
                fluidRow(
                  tabBox(id="tabchart1",
                         tabPanel("Analysis on Blood Donor", plotlyOutput("plot1")),
                         
                  )
                )
                
        )
        ##tabItem(tabName = "charts1",
        ##        fluidRow(
        ##          tabBox(id="tabchart2",
        ##                 tabPanel("Analysis on Blood Donor", plotlyOutput("plot1")),
        
        ##          )
        ##        )
        
      )
    )
  )
)




server <- function(input, output, session){
  ## Plotly Scatter Plot
  output$plot1 <- renderPlotly({
    plot_ly(data=blood, 
            x=~V1, 
            y=~Class,
            type = "histogram")
  })
  
  
  ## Plotly Histogram
  output$plot2 <- renderPlotly({
    plot_ly(data=blood,
            x=~V2, 
            y=~class, 
            type="histogram")
    
  })
  
  
  ##output$plot3 <- renderPlotly({
  ##plot_ly(data=mtcars, 
  ##x=~hp, 
  ##y=~mpg,
  ##type = "scatter",
  ##mode = "markers")
  
  ##})
  
  
}


shinyApp(ui = ui, server = server)
