
function(input, output) {
  output$plot <- renderLeaflet({
    # filter data from inputs
    filteredData <- 
      service_calls %>% filter(Type_Description %in% input$CrimeList) %>%  
      filter(Event_Date >= input$dates[1] & Event_Date <= input$dates[2])
    
    pal <- "YlOrRd"
    
    # create map base
    m <- leaflet() %>%
      addTiles(group = 'Open Street Map') %>%
      addProviderTiles('Esri.WorldImagery', group = 'Satellite') %>%
      addProviderTiles('CartoDB', group = 'Clear Street View') %>%
      fitBounds(lng1 = -115.38, lng2 = -114.93, lat1 = 36.3, lat2 = 36) %>% 
      addLayersControl(
        baseGroups = c('Open Street Map', 'Satellite', 'Clear Street View'),
        options = layersControlOptions(collapsed = FALSE)
      ) %>% 
      addMarkers(
        data = filteredData,
        icon = ~CrimeIcons[Type_Description],
        popup = ~contentbox,
        clusterOptions = markerClusterOptions()
      ) %>% 
      addDrawToolbar(
        targetGroup='Selected',
        polylineOptions=FALSE,
        markerOptions = FALSE,
        polygonOptions = drawPolygonOptions(shapeOptions=drawShapeOptions(fillOpacity = 0
                                                                          ,color = 'white'
                                                                          ,weight = 3)),
        rectangleOptions = drawRectangleOptions(shapeOptions=drawShapeOptions(fillOpacity = 0
                                                                              ,color = 'white'
                                                                              ,weight = 3)),
        circleOptions = drawCircleOptions(shapeOptions = drawShapeOptions(fillOpacity = 0
                                                                          ,color = 'white'
                                                                          ,weight = 3)),
        editOptions = editToolbarOptions(edit = FALSE, selectedPathOptions = selectedPathOptions()))
    
    
    if (input$mapfilter == "Employment Status") {
      ES_pal <- colorBin(palette = pal,
                         domain = EmploymentStatus@data$Percent.Unemployed, bins = 6)

      m %>%
        addPolygons(data=EmploymentStatus,weight = 1,
                    color = ~ES_pal(Percent.Unemployed),
                    label = ~paste0("Percent Unemployed: ", Percent.Unemployed,"%"),
                    highlight = highlightOptions(weight = 3, color = "red",
                                                 bringToFront = TRUE)) 
      
    } else if (input$mapfilter == "Median Age") {
      MAbins <- c(0, 20, 25, 30, 40, 50, 60, 70, Inf)

      MA_pal <- colorBin(palette = pal,
                         domain = MedianAge@data$Estimate.Median.age, bins = MAbins)

      m %>%
        addPolygons(data=MedianAge,weight = 1,
                    color = ~MA_pal(Estimate.Median.age),
                    label = ~paste0("Median Age: ", Estimate.Median.age),
                    highlight = highlightOptions(weight = 3, color = "red",
                                                 bringToFront = TRUE)) 
    
    } else if (input$mapfilter == "Median Income") {
      MIbins <- c(0, 30000, 60000, 90000, 120000, 150000, 170000, 200000,250000, Inf)

      MI_pal <- colorBin(palette = pal,
                         domain = MedianIncome@data$Median.household.income.in.the.past.12.months, bins = MIbins)

      m %>%
        addPolygons(data=MedianIncome,weight = 1,
                    color = ~MI_pal(Median.household.income.in.the.past.12.months),
                    label = ~paste0("Median Income: ", dollar(Median.household.income.in.the.past.12.months)),
                    highlight = highlightOptions(weight = 3, color = "red",
                                                 bringToFront = TRUE)) 
      
    }  else if (input$mapfilter == "Median House Price") {
      MHPbins <- c(0, 100000, 250000, 500000, 750000, 1000000, 1500000, Inf)

      MHP_pal <- colorBin(palette = pal,
                          domain = MedianHousePrice@data$Estimate.Median.House.Value, bins = MHPbins)


      m %>%
        addPolygons(data=MedianHousePrice,weight = 1,
                    color = ~MHP_pal(Estimate.Median.House.Value),
                    label = ~paste0("Median House Price: ", dollar(Estimate.Median.House.Value)),
                    highlight = highlightOptions(weight = 3, color = "red",
                                                 bringToFront = TRUE)) 
   
    } else if (input$mapfilter == "Poverty Level") {

      PL_pal <- colorBin(palette = pal,
                         domain = PovertyLevel@data$X..below.the.poverty.level, bins = 6)

      m %>%
        addPolygons(data=PovertyLevel,weight = 1,
                    color = ~PL_pal(X..below.the.poverty.level),
                    label = ~paste0("Percentage below Poverty Level: ", X..below.the.poverty.level,"%"),
                    highlight = highlightOptions(weight = 3, color = "red",
                                                 bringToFront = TRUE)) 

    } else if (input$mapfilter == "Vacancies") {
      Vbins <- c(0, 10, 20, 50, 100, 200, 500, 1000, Inf)

      V_pal <- colorBin(palette = pal,
                        domain = Vacancies@data$Total.Vacancies, bins = Vbins)

      m %>%
        addPolygons(data=Vacancies,weight = 1,
                    color = ~V_pal(Total.Vacancies),
                    label = ~paste0("Number of Property Vacancies: ", Total.Vacancies),
                    highlight = highlightOptions(weight = 3, color = "red",
                                                 bringToFront = TRUE)) 

    } else
      m
  }
)
}
