
header <- dashboardHeader(
  title = p("LVMPD Tool"), titleWidth = 400
)

sidebar <- dashboardSidebar(
  fluidPage(

    # Copy the line below to make a select box 
    selectInput("mapfilter", label = h4("Census Data Filter by:"),
                 choices = list("No Filter" = 1, "Employment Status" = 2, "Median Age" = 3,"Median House Price" = 4,"Median Income" = 5,"Vacancies" = 6),
                 selected = 1)
    ),

  fluidPage(
    
    # Copy the line below to make a date range selector
    dateRangeInput("dates",
                   label = h2("Date Range"),
                   start = as.Date('2018-06-29'), 
                   end = as.Date('2020-12-05'),
                   min = "2018-06-29", 
                   max = "2020-12-05")
    
  ),
  
  fluidPage(

    # Copy the chunk below to make a group of checkboxes
    checkboxGroupInput("CrimeList", label = h2("Crime List"),
                       choices = list("ASLT/BATT NEG INJURY DRIVE-BY SHOOTING" = "ASLT/BATT NEG INJURY DRIVE-BY SHOOTING",
                                      "ASSAULT/BATTERY" = "ASSAULT/BATTERY",
                                      "ASSAULT/BATTERY NEGATIVE INJURY" = "ASSAULT/BATTERY NEGATIVE INJURY",
                                      "ASSAULT/BATTERY WITH A GUN" = "ASSAULT/BATTERY WITH A GUN",
                                      "ASSAULT/BATTERY WITH OTHER DEADLY WEAPON" = "ASSAULT/BATTERY WITH OTHER DEADLY WEAPON",
                                      "AUTO BURGLARY" = "AUTO BURGLARY",
                                      "BURGLARY"= "BURGLARY",
                                      "FIGHT"= "FIGHT",
                                      "HOMICIDE" = "HOMICIDE",
                                      "INDECENT EXPOSURE" = "INDECENT EXPOSURE",
                                      "JUVENILE DISTURBANCE" = "JUVENILE DISTURBANCE",
                                      "LARCENY FROM PERSON (NON ROBBERY)" = "LARCENY FROM PERSON (NON ROBBERY)",
                                      "MALICIOUS DESTRUCTION OF PROPERTY" = "MALICIOUS DESTRUCTION OF PROPERTY",
                                      "OTHER DISTURBANCE" = "OTHER DISTURBANCE",
                                      "PERSON WITH A GUN" = "PERSON WITH A GUN",
                                      "PERSON WITH A KNIFE" = "PERSON WITH A KNIFE",
                                      "PERSON WITH OTHER DEADLY WEAPON" = "PERSON WITH OTHER DEADLY WEAPON",
                                      "RECOVERED STOLEN VEHICLE" = "RECOVERED STOLEN VEHICLE",
                                      "ROBBERY" = "ROBBERY",
                                      "STOLEN MOTOR VEHICLE" = "STOLEN MOTOR VEHICLE"),
                       selected = "BURGLARY")
  )
)
  
body <- dashboardBody(
  leafletOutput("plot",width = "100%",height=1000)
  #box(
    #width = 12,
    #title = "Las Vegas Metropolitan Police Department Crime Mapping Tool"
  #)
)

dashboardPage(
  skin="yellow",
    header,
    sidebar,
    body
)