
  function(input, output) {
    output$plot <- renderLeaflet({
      
      crimeIcons <- iconList(
        #"ASLT/BATT NEG INJURY DRIVE-BY SHOOTING",
        #"ASSAULT/BATTERY",
        #"ASSAULT/BATTERY NEGATIVE INJURY",
        "ASSAULT/BATTERY WITH A GUN"= makeIcon(iconUrl = './icons/Assualt with Gun.png', iconWidth = 35, iconHeight = 35),
        "ASSAULT/BATTERY WITH OTHER DEADLY WEAPON"= makeIcon(iconUrl = './icons/Assault with Deadly Weapon.png', iconWidth = 35, iconHeight = 35),
        "AUTO BURGLARY"= makeIcon(iconUrl = './icons/Auto Burglary.png', iconWidth = 35, iconHeight = 35),
        "BURGLARY"= makeIcon(iconUrl = './icons/Burglary.png', iconWidth = 35, iconHeight = 35),
        "FIGHT"= makeIcon(iconUrl = './icons/Fight.png', iconWidth = 35, iconHeight = 35),
        "HOMICIDE"= makeIcon(iconUrl = './icons/Homicide.png', iconWidth = 35, iconHeight = 35),
        "INDECENT EXPOSURE"= makeIcon(iconUrl = './icons/Indecent Exposure.png', iconWidth = 35, iconHeight = 35),
        "JUVENILE DISTURBANCE"= makeIcon(iconUrl = './icons/Juvenile Disturbance.png', iconWidth = 35, iconHeight = 35),
        "LARCENY FROM PERSON (NON ROBBERY)"= makeIcon(iconUrl = './icons/Larceny.png', iconWidth = 35, iconHeight = 35),
        #"MALICIOUS DESTRUCTION OF PROPERTY",
        #"OTHER DISTURBANCE",
        #"PERSON WITH A GUN",
        #"PERSON WITH A KNIFE",
        #"PERSON WITH OTHER DEADLY WEAPON",
        #"RECOVERED STOLEN VEHICLE",
        "ROBBERY"= makeIcon(iconUrl = './icons/Robbery.png',iconWidth = 35,iconHeight = 35),
        "STOLEN MOTOR VEHICLE"= makeIcon(iconUrl = './icons/Stolen Motor Vehicle.png', iconWidth = 35, iconHeight = 35)
      )
      
      filteredData <- 
        service_calls %>% filter(Type_Description %in% input$CrimeList) %>%  
        filter(Event_Date >= input$dates[1] & Event_Date <= input$dates[2])
      
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
        icon = ~crimeIcons[Type_Description],
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
