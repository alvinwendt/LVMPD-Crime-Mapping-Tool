
  function(input, output) {
    output$plot <- renderLeaflet({
# filter data from inputs
      filteredData <- 
        service_calls %>% filter(Type_Description %in% input$CrimeList) %>%  
        filter(Event_Date >= input$dates[1] & Event_Date <= input$dates[2])

# create map base
    m <- leaflet() %>%
      addTiles(group = 'OSM') %>%
      addProviderTiles('Esri.WorldStreetMap', group = 'Esri') %>%
      addProviderTiles('CartoDB.Positron', group = 'CartoDB') %>%
      fitBounds(lng1 = -115.38, lng2 = -114.93, lat1 = 36.3, lat2 = 36)
    
    ES_pal <- colorNumeric(palette = "YlOrRd",
                           domain = EmploymentStatus@data$Percent.Unemployed)
    m %>% 
      addPolygons(data=EmploymentStatus,weight = 1,
                  color = ~ES_pal(Percent.Unemployed),
                  label = ~paste0("Percent Unemployed: ", Percent.Unemployed),
                  highlight = highlightOptions(weight = 3, color = "red",
                                               bringToFront = TRUE)) %>% 
      addMarkers(
        data = filteredData,
        icon = ~CrimeIcons[Type_Description],
        popup = ~Type_Description,
        group = "BURGLARY",
        clusterOptions = markerClusterOptions()
      ) %>% 
      addLayersControl(
        baseGroups = c('OSM', 'Esri', 'CartoDB'),
        options = layersControlOptions(collapsed = FALSE)
      )
  })
}




#Add circle markers code for filtering data points based on selected crime output
#for (crime in CrimeList){
#  m <- m %>% 
#    addCircleMarkers(
#      data = service_calls %>% filter(Type_Description == crime),
#      color = ~pal(Type_Description),
#      group = crime,
#      clusterOptions = markerClusterOptions())
#}
