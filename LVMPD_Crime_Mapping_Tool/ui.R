#Pull in naming for crime selectors inputs

typecrime <- c("DRIVE-BY SHOOTING" = "DRIVE-BY SHOOTING",
          "ASSAULT/BATTERY" = "ASSAULT/BATTERY",
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
          "STOLEN MOTOR VEHICLE" = "STOLEN MOTOR VEHICLE")

#Pull in naming for business selectors inputs

typebiz <- c('Administrative Office Space' = 'Administrative Office Space',
             'Adult Book Store' = 'Adult Book Store',
             'Adult Day Care Facility' = 'Adult Day Care Facility',
             'Adult Internet Sales' = 'Adult Internet Sales',
             'Advertising Space Leasing or Selling' = 'Advertising Space Leasing or Selling',
             'Affiliate Company Software Developer' = 'Affiliate Company Software Developer',
             'Alcohol Beverage Caterer' = 'Alcohol Beverage Caterer',
             'Alcoholic Beverage Caterer' = 'Alcoholic Beverage Caterer',
             'Alcoholic Beverage Caterer GFL' = 'Alcoholic Beverage Caterer GFL',
             'Ambulance Franchise Fee' = 'Ambulance Franchise Fee',
             'Ambulance Service' = 'Ambulance Service',
             'Amusement Park' = 'Amusement Park',
             'Ancillary Brew Pub' = 'Ancillary Brew Pub',
             'Ancillary Internet Alcohol Sales' = 'Ancillary Internet Alcohol Sales',
             'Ancillary Tasting' = 'Ancillary Tasting',
             'Animal Drawn Vehicle' = 'Animal Drawn Vehicle',
             'Annual Alcoholic Beverage Tasting' = 'Annual Alcoholic Beverage Tasting',
             'Apartment House' = 'Apartment House',
             'Apartment Rentals' = 'Apartment Rentals',
             'Appraiser' = 'Appraiser',
             'Arcade' = 'Arcade',
             'Armored Car Service' = 'Armored Car Service',
             'Art Gallery-Retail' = 'Art Gallery-Retail',
             'Artist' = 'Artist',
             'Auction & Auctioneers' = 'Auction & Auctioneers',
             'Auctions & Auctioneers' = 'Auctions & Auctioneers',
             'Auto Broker' = 'Auto Broker',
             'Auto Pawnbroker' = 'Auto Pawnbroker',
             'Auto Sales-Limited' = 'Auto Sales-Limited',
             'Automated Teller Operator' = 'Automated Teller Operator',
             'Automobile Detailing' = 'Automobile Detailing',
             'Automobile Leasing' = 'Automobile Leasing',
             'Automobile Towing Service' = 'Automobile Towing Service',
             'Automotive Garage (Major)' = 'Automotive Garage (Major)',
             'Automotive Garage/Service Station (Minor)' = 'Automotive Garage/Service Station (Minor)',
             'Automotive Sales with Minor Repair' = 'Automotive Sales with Minor Repair',
             'Babysitting Service' = 'Babysitting Service',
             'Bail Agent / Enforcement Agent' = 'Bail Agent / Enforcement Agent',
             'Bail Bond Agency' = 'Bail Bond Agency',
             'Bank Commercial Bank or Banking Corporation' = 'Bank Commercial Bank or Banking Corporation',
             'Banquet or Event Establish-Liquor' = 'Banquet or Event Establish-Liquor',
             'Banquet or Event Establishment' = 'Banquet or Event Establishment',
             'Beer Wine Cooler Off Sale' = 'Beer Wine Cooler Off Sale',
             'Beer Wine Cooler On Sale' = 'Beer Wine Cooler On Sale',
             'Beer Wine Room' = 'Beer Wine Room',
             'Billiard or Pool Hall' = 'Billiard or Pool Hall',
             'Bowling Center' = 'Bowling Center',
             'Building Plant Nursery & Hardware Supplies' = 'Building Plant Nursery & Hardware Supplies',
             'Burglar Alarm Service' = 'Burglar Alarm Service',
             'Business Space Rent or Lease' = 'Business Space Rent or Lease',
             'Business Support Service' = 'Business Support Service',
             'Car Wash' = 'Car Wash',
             'Check Cashing Service Limited' = 'Check Cashing Service Limited',
             'Circus Carnival Games / Rides' = 'Circus Carnival Games / Rides',
             'Clinic or Laboratory' = 'Clinic or Laboratory',
             'Coin Amusement Machine' = 'Coin Amusement Machine',
             'Collection / Credit Reporting Agency' = 'Collection / Credit Reporting Agency',
             'Commodity or Securities Broker or Dealer' = 'Commodity or Securities Broker or Dealer',
             'Communication Fees' = 'Communication Fees',
             'Construction Cleanup' = 'Construction Cleanup',
             'Contractor' = 'Contractor',
             'Convenience Store' = 'Convenience Store',
             'Cosmetological Establishment' = 'Cosmetological Establishment',
             'Coupon Book Sales Licenses' = 'Coupon Book Sales Licenses',
             'Credit Union' = 'Credit Union',
             'Designer-Draftsman' = 'Designer-Draftsman',
             'Drug Store' = 'Drug Store',
             'Dry Cleaning/Laundry Facility & Services' = 'Dry Cleaning/Laundry Facility & Services',
             'Electronic Security Services' = 'Electronic Security Services',
             'Employment Agency' = 'Employment Agency',
             'Environmental Analysis' = 'Environmental Analysis',
             'Erotic Dance Establishment' = 'Erotic Dance Establishment',
             'Express or Delivery Service' = 'Express or Delivery Service',
             'Farmers Market Promoter' = 'Farmers Market Promoter',
             'Farmers Market Promoter 2nd Location' = 'Farmers Market Promoter 2nd Location',
             'Finance Company' = 'Finance Company',
             'Food Services or Cafe' = 'Food Services or Cafe',
             'Food Specialty Store' = 'Food Specialty Store',
             'Fulfillment Center' = 'Fulfillment Center',
             'Funeral Home & Cemetery' = 'Funeral Home & Cemetery',
             'Funeral/Cemetery Administrators' = 'Funeral/Cemetery Administrators',
             'Gaming Nonrestricted' = 'Gaming Nonrestricted',
             'Gaming Nonrestricted Limited' = 'Gaming Nonrestricted Limited',
             'Gaming Restricted' = 'Gaming Restricted',
             'General On-Sale' = 'General On-Sale',
             'General Retail Sales' = 'General Retail Sales',
             'General Services (Counter / Office)' = 'General Services (Counter / Office)',
             'Grocery/Mega Store' = 'Grocery/Mega Store',
             'Handbill and Oral Solicitation' = 'Handbill and Oral Solicitation',
             'Health Maintenance Organization-Insurance Company' = 'Health Maintenance Organization-Insurance Company',
             'Hemp Grower ' = 'Hemp Grower ',
             'Hemp Handler ' = 'Hemp Handler ',
             'Hemp Producer ' = 'Hemp Producer ',
             'Hospital' = 'Hospital',
             'Hotel - 199 rooms or less' = 'Hotel - 199 rooms or less',
             'Hypnotherapy' = 'Hypnotherapy',
             'Ice Cream Truck' = 'Ice Cream Truck',
             'Independent Massage Therapist' = 'Independent Massage Therapist',
             'Independent Testing Laboratory' = 'Independent Testing Laboratory',
             'Instruction Services' = 'Instruction Services',
             'Insurance Agency' = 'Insurance Agency',
             'Interactive Entertainment Center' = 'Interactive Entertainment Center',
             'Inter-Jurisdictional Mobile Service Operation' = 'Inter-Jurisdictional Mobile Service Operation',
             'Internet Adult Entertainment' = 'Internet Adult Entertainment',
             'Internet Entertainer' = 'Internet Entertainer',
             'Internet Retailer' = 'Internet Retailer',
             'Lawn & Landscape Maintenance' = 'Lawn & Landscape Maintenance',
             'Liquor Manufacturer' = 'Liquor Manufacturer',
             'Locksmith and Safe Mechanic' = 'Locksmith and Safe Mechanic',
             'Management or Consulting Service' = 'Management or Consulting Service',
             'Manufacturing (Heavy)' = 'Manufacturing (Heavy)',
             'Manufacturing' = 'Manufacturing',
             'Manufacturing Light Assembly and Fabrication' = 'Manufacturing Light Assembly and Fabrication',
             'Marijuana Cultivation Facility (Rec Cultivation)' = 'Marijuana Cultivation Facility (Rec Cultivation)',
             'Marijuana Cultivation Facility OLV' = 'Marijuana Cultivation Facility OLV',
             'Marijuana Distributor' = 'Marijuana Distributor',
             'Marijuana Distributor OLV' = 'Marijuana Distributor OLV',
             'Marijuana Distributor Transportation Contractor' = 'Marijuana Distributor Transportation Contractor',
             'Marijuana Production Facility OLV' = 'Marijuana Production Facility OLV',
             'Marijuana Support Business (Retail/Medical)' = 'Marijuana Support Business (Retail/Medical)',
             'Marijuana Testing Facility (Rec Lab)' = 'Marijuana Testing Facility (Rec Lab)',
             'Martial Arts Instruction Business' = 'Martial Arts Instruction Business',
             'Massage Establishment (Accessory)' = 'Massage Establishment (Accessory)',
             'Massage Establishment' = 'Massage Establishment',
             'Medical Marijuana Cultivation Facility' = 'Medical Marijuana Cultivation Facility',
             'Medical Marijuana Dispensary' = 'Medical Marijuana Dispensary',
             'Medical Marijuana Production Facility' = 'Medical Marijuana Production Facility',
             'Membership Club' = 'Membership Club',
             'Merchandise Broker' = 'Merchandise Broker',
             'Mini Warehouse' = 'Mini Warehouse',
             'Mobile Food Trailer' = 'Mobile Food Trailer',
             'Mobile Food Vendor' = 'Mobile Food Vendor',
             'Mobile Home Park' = 'Mobile Home Park',
             'Motel' = 'Motel',
             'Motor Transportation Service' = 'Motor Transportation Service',
             'Multi-Vendor' = 'Multi-Vendor',
             'Night Club' = 'Night Club',
             'Non Medical Supervised Patient Transfer Service' = 'Non Medical Supervised Patient Transfer Service',
             'Non-Depository Lender' = 'Non-Depository Lender',
             'None' = 'None',
             'Non-farm Product Vendor' = 'Non-farm Product Vendor',
             'Nonprofit Club General On-Sale' = 'Nonprofit Club General On-Sale',
             'NP COMMUNITY SERVICES' = 'NP COMMUNITY SERVICES',
             'NP DRUG/ALCOHOL COUNSELING' = 'NP DRUG/ALCOHOL COUNSELING',
             'NP Family Counseling' = 'NP Family Counseling',
             'NP Halfway House' = 'NP Halfway House',
             'NP Homeless Shelter/Rescue Mission' = 'NP Homeless Shelter/Rescue Mission',
             'NP MEDICAL' = 'NP MEDICAL',
             'NP Social Services' = 'NP Social Services',
             'NP THRIFT STORE' = 'NP THRIFT STORE',
             'Open Air Vending' = 'Open Air Vending',
             'Other' = 'Other',
             'Outcall Entertainment Referral Service' = 'Outcall Entertainment Referral Service',
             'Outdoor Pay Phone per Location' = 'Outdoor Pay Phone per Location',
             'Outdoor Pay Phones' = 'Outdoor Pay Phones',
             'Outdoor Sports Center and Activities Related' = 'Outdoor Sports Center and Activities Related',
             'Package' = 'Package',
             'Parking Lot' = 'Parking Lot',
             'Pawnbroker' = 'Pawnbroker',
             'Pedalbus' = 'Pedalbus',
             'Peddler Solicitor' = 'Peddler Solicitor',
             'Pedicab' = 'Pedicab',
             'Permanent Make Up' = 'Permanent Make Up',
             'Personal Services' = 'Personal Services',
             'Pet Breeder' = 'Pet Breeder',
             'Pet Shop' = 'Pet Shop',
             'Photography Business' = 'Photography Business',
             'Pistol Permit' = 'Pistol Permit',
             'Product manufacturing Facility (Rec Production)' = 'Product manufacturing Facility (Rec Production)',
             'Professional Promoter' = 'Professional Promoter',
             'Professional Services - Medical' = 'Professional Services - Medical',
             'Professional Services' = 'Professional Services',
             'Property Management' = 'Property Management',
             'Psychic Arts - Science' = 'Psychic Arts - Science',
             'Public Utility Electric' = 'Public Utility Electric',
             'Public Utility Gas' = 'Public Utility Gas',
             'Public Utility Telephone' = 'Public Utility Telephone',
             'Publishing & Newspapers' = 'Publishing & Newspapers',
             'Radio Station' = 'Radio Station',
             'Real Estate Developer' = 'Real Estate Developer',
             'Real Estate Firm' = 'Real Estate Firm',
             'Real Estate Salesperson' = 'Real Estate Salesperson',
             'Recreation Facility' = 'Recreation Facility',
             'Recreational Vehicle Park' = 'Recreational Vehicle Park',
             'Recycle Waste Haulers' = 'Recycle Waste Haulers',
             'Reflexology Establishment' = 'Reflexology Establishment',
             'Reflexology Practitioner' = 'Reflexology Practitioner',
             'Rental & Leasing' = 'Rental & Leasing',
             'Rental Car Agency' = 'Rental Car Agency',
             'Rental Referral Service' = 'Rental Referral Service',
             'Repair and Maintenance' = 'Repair and Maintenance',
             'Residence Hotel' = 'Residence Hotel',
             'Residence Hotel Single Room' = 'Residence Hotel Single Room',
             'Residential Home Care Provider' = 'Residential Home Care Provider',
             'Residential Property Maintenance' = 'Residential Property Maintenance',
             'Resort Hotel - 200 rooms or more' = 'Resort Hotel - 200 rooms or more',
             'Resort Hotel' = 'Resort Hotel',
             'Restaurant' = 'Restaurant',
             'Restaurant Service Bar' = 'Restaurant Service Bar',
             'Restaurant with Alcohol' = 'Restaurant with Alcohol',
             'Retail Marijuana Store (Rec Sales)' = 'Retail Marijuana Store (Rec Sales)',
             'Riding Horse Rental' = 'Riding Horse Rental',
             'Room Tax Migrated Application (Temp License Category)' = 'Room Tax Migrated Application (Temp License Category)',
             'Rooming House' = 'Rooming House',
             'Sales-Related Call Center' = 'Sales-Related Call Center',
             'School' = 'School',
             'Secondhand Dealer Class 1-A' = 'Secondhand Dealer Class 1-A',
             'Secondhand Dealer Class 1-C' = 'Secondhand Dealer Class 1-C',
             'Secondhand Dealer Class II' = 'Secondhand Dealer Class II',
             'Secondhand Dealer Class III' = 'Secondhand Dealer Class III',
             'Sewer or Septic Drain Cleaning' = 'Sewer or Septic Drain Cleaning',
             'Short Term Residential Rental (Owner)' = 'Short Term Residential Rental (Owner)',
             'Short Term Residential Rental (PM)' = 'Short Term Residential Rental (PM)',
             'Sign Painting Establishment' = 'Sign Painting Establishment',
             'Slot Operator' = 'Slot Operator',
             'Small Game Room' = 'Small Game Room',
             'Special Care Facility' = 'Special Care Facility',
             'Special Event Medical Service' = 'Special Event Medical Service',
             'Sporting Goods' = 'Sporting Goods',
             'Tailor and/or Dressmaker' = 'Tailor and/or Dressmaker',
             'Tattoo Establishment' = 'Tattoo Establishment',
             'Tavern' = 'Tavern',
             'Tavern-Limited' = 'Tavern-Limited',
             'Teenage Dance/Dancehall/Club' = 'Teenage Dance/Dancehall/Club',
             'Television Broadcast Station' = 'Television Broadcast Station',
             'Temporary Merchant' = 'Temporary Merchant',
             'Theater' = 'Theater',
             'Time Limited Alcohol (Beer/Wine)' = 'Time Limited Alcohol (Beer/Wine)',
             'Time Limited Alcohol (General)' = 'Time Limited Alcohol (General)',
             'Time Share Sales Agent' = 'Time Share Sales Agent',
             'Title Insurance Company' = 'Title Insurance Company',
             'Tobacco Dealer' = 'Tobacco Dealer',
             'Tobacco Sales / Lounge' = 'Tobacco Sales / Lounge',
             'Topless Club' = 'Topless Club',
             'Trade Show Alcohol' = 'Trade Show Alcohol',
             'Trailer or Mobile Home Sales' = 'Trailer or Mobile Home Sales',
             'Transfer and Storage Company' = 'Transfer and Storage Company',
             'Transitional Living Facility' = 'Transitional Living Facility',
             'Transportation Network Company' = 'Transportation Network Company',
             'Travel & Ticket Agency' = 'Travel & Ticket Agency',
             'Truck Rental Agency' = 'Truck Rental Agency',
             'Trust Company' = 'Trust Company',
             'Urban Lounge' = 'Urban Lounge',
             'Valet Parking' = 'Valet Parking',
             'Vapes and Electronic Cigarettes' = 'Vapes and Electronic Cigarettes',
             'Video Center' = 'Video Center',
             'Vocational Rehabilitation Counselor' = 'Vocational Rehabilitation Counselor',
             'Warehouse or Storage' = 'Warehouse or Storage',
             'Wedding Chapel' = 'Wedding Chapel',
             'Wholesale General' = 'Wholesale General',
             'Wire Service' = 'Wire Service'
             )           

#Title and Header for Shiny Dashboad
          
header <- dashboardHeader(
  title = p("Las Vegas Metropolitan Police Department Crime Mapping Tool"), titleWidth = 600
)

#Disabled sidebar for aesthetics, use body instead for TabBoxes

sidebar <- dashboardSidebar(disable = TRUE)
  

#Shiny Dashboard Body

body <- dashboardBody(
  
#Custom Formatting
    
 tags$head(
   tags$link(rel = "stylesheet", type = "text/css", href = "www/custom.css")),
  
 
 #Create Structure for Body of Shiny Dashboard
 
 fluidRow(
    column(width =4, # First Column
      box(width = NULL, title =tagList(shiny::icon("layer-group",class = 'fa-lg'), "Census Data Filters"),
        solidHeader = T, collapsible = T, status = 'primary',
        
        # Census Filter Input - Selector Widget
        
        selectInput("mapfilter", label = ("Choose a Census Filter"),
                    width = 380,
                    choices = list("No Filter" = "No Filter", 
                                   "Employment Status" = "Employment Status", 
                                   "Median Age" = "Median Age",
                                   "Median House Price" = "Median House Price",
                                   "Median Income" = "Median Income",
                                   "Poverty Level" = "Poverty Level",
                                   "Vacancies" = "Vacancies"),
                    selected = "No Filter"
        )),
    
      #Create new box with 2 tabs
      
      tabsetPanel(
           tabPanel("Crime Filter", 
                    box(width = NULL, title =tagList(shiny::icon("filter",class = 'fa-lg'), "Filter Crime Data"),
                        solidHeader = T, collapsible = T, status = 'primary',
                        
                        #Text Input for Offender Search
                        
                        textInput("offender", label = ("Offender Name"), placeholder = ""),
                        
                        # Date Filter Input - Date Range Widget
                        
                        dateRangeInput("datescrime",
                                       label = ("Date Range"),
                                       width=380,
                                       start = '2018-06-29', 
                                       end = '2020-12-05',
                                       min = "2018-06-29", 
                                       max = "2020-12-05"
                        ),
                        
                        # Crime List Filter Input - Selectize Widget
                        
                        selectizeInput("CrimeList", 
                                       label = ("Crime List"),
                                       choices = typecrime,
                                       width = 380,
                                       selected=c("DRIVE-BY SHOOTING",
                                                  "ASSAULT/BATTERY",
                                                  "BURGLARY",
                                                  "FIGHT",
                                                  "HOMICIDE",
                                                  "PERSON WITH A GUN",
                                                  "PERSON WITH A KNIFE",
                                                  "PERSON WITH OTHER DEADLY WEAPON",
                                                  "ROBBERY"),
                                       multiple = T
                        ),
                        
                        #Load Map Button - Submit Widget
                        submitButton(text = "Load Map",icon =icon('filter')
                        )
                    ),
                    
                    #New Box for About Shiny App Section
                    
                    box(width = NULL,title = tagList(shiny::icon("info-circle",class = 'fa-lg'), "About LVMPD Crime Mapping Tool"), solidHeader = T, collapsible = T, status = 'info',
                        strong("LVMPD Crime Mapping Tool"),"is an interactive map built on shiny which allows you to cutomize
                         time range and incident type to filter out crime reports of a certain location you want. The table
               below the map allows you to interact and view more details from the markers in the map. The data is from", a('here.', href = 'https://opendataportal-lasvegas.opendata.arcgis.com/', target = "_blank")
                    ),
                    
                    # New box for links to social and GitHub
                    
                    box(width = NULL,
                        icon('github', class = 'fa-lg'), a('Source Code', href = 'https://github.com/alvinwendt/R-Shiny-Application', target = "_blank"),
                        br(),
                        br(),
                        icon('github-alt', class = 'fa-lg'), a('My Github Page', href = 'https://github.com/', target = "_blank"),
                        br(),
                        br(),
                        icon('linkedin-square', class = 'fa-lg'), a('My Linkedin Page', href = 'https://www.linkedin.com/in/alvinwendt/', target = "_blank"))
           ),
           
           #New TabBox for Business Filters
           
           tabPanel("Business Filter", 
                    box(width = NULL, title =tagList(shiny::icon("filter",class = 'fa-lg'), "Filter Business Data"),
                        solidHeader = T, collapsible = T, status = 'primary',
                        
                        # Date Filter Input - Date Range Widget
                        
                        dateRangeInput("datesbiz",
                                       label = ("Date Range"),
                                       width=380,
                                       start = '1951-06-29', 
                                       end = '2020-12-05',
                                       min = "1951-06-29", 
                                       max = "2020-12-05"
                        ),
                        
                        # Business List Filter Input - Selectize Widget

                        selectizeInput("business_type",
                                       label = ("Business Category"),
                                       choices = typebiz,
                                       width = 380,
                                       selected=NULL,
                                       multiple = T
                        ),
                        
                        #Load Map Button - Submit Widget
                        
                        submitButton(text = "Load Map",icon =icon('filter')
                        )
                    ),
                    
                    # Box for About Shiny App Section
                    
                    box(width = NULL,title = tagList(shiny::icon("info-circle",class = 'fa-lg'), "About LVMPD Crime Mapping Tool"), solidHeader = T, collapsible = T, status = 'info',
                        strong("LVMPD Crime Mapping Tool"),"is an interactive map built on shiny which allows you to cutomize
                         time range and incident type to filter out crime reports of a certain location you want. The table
               below the map allows you to interact and view more details from the markers in the map. The data is from", a('here.', href = 'https://opendataportal-lasvegas.opendata.arcgis.com/', target = "_blank")
                    ),
                    
                    # Box for links to social and GitHub
                    
                    box(width = NULL,
                     
                        icon('github', class = 'fa-lg'), a('Source Code', href = 'https://github.com/alvinwendt/R-Shiny-Application', target = "_blank"),
                        br(),
                        br(),
                        icon('github-alt', class = 'fa-lg'), a('My Github Page', href = 'https://github.com/', target = "_blank"),
                        br(),
                        br(),
                        icon('linkedin-square', class = 'fa-lg'), a('My Linkedin Page', href = 'https://www.linkedin.com/in/alvinwendt/', target = "_blank"))
            )
    )),
    
    
    column(width =8, # Second Column
           
           # Map Leaflet Output
           box(width = NULL, solidHeader = TRUE,
               leafletOutput("plot",height=580)
               ),
           
           # Data Table Output
           box(width = NULL, solidHeader = TRUE,
               DT::dataTableOutput("table1")
           )
    )
    
  )
)



  #Knit together Shiny Dashboard and Theme

dashboardPage(
  skin="yellow",
    header,
    sidebar,
    body
)
