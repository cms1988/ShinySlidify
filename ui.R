library(shiny)
require(rCharts)


# Define UI for input things on map
shinyUI(pageWithSidebar(
    
    # Application title
    headerPanel("Creating your map!"),
    
    # Sidebar with text, numeric and slider inputs
    sidebarPanel(
        textInput("text", "Put the NAME of your dot here:", "YouFind Solutions"),
        numericInput("lat", "Put your LATITUDE here:", -23.565041),
        numericInput("long", "Put your LONGITUDE here:", -46.702779),
        

        helpText("Note: use the format xx.xxxxx"),
        
        sliderInput("zoom", 
                        "Select here the zoom you want:", 
                        min = 1,
                        max = 20, 
                        value = 13)
        ),
        
        
        # Now, it's time to plot!!!
        mainPanel(
            
            tabsetPanel(
                tabPanel("Map", chartOutput("myChart", 'leaflet')), 
                tabPanel("About", textOutput("about1"),textOutput("about2"), textOutput("about3"),textOutput("about4"),textOutput("about5"))
            
        ))))

