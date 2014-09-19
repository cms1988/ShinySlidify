library(shiny)
require(rCharts)


# Define server logic required to create the map with all the inputs
shinyServer(function(input, output) {
    
    output$myChart <- renderMap({
        map3 <- Leaflet$new()
        map3$setView(c(input$lat, input$long), zoom = input$zoom)
        map3$marker(c(input$lat, input$long), bindPopup = input$text)
        map3
        
    })
    
    output$about1 <- renderText({"This application is so simple to use!"})
    output$about2<- renderText({"First: Take a look at the map, interact with it!"})
    output$about3 <- renderText({"Second: Make your own, change the name of the popup!"})
    output$about4 <- renderText({"Third: Put the Latitude and the Longitude you want to centralize the map!"})
    output$about5 <- renderText({"Fourth: Change the zoom, it's nice!"})
    
    
    
})
