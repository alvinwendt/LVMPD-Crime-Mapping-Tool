library(leaflet)
library(plotly)
library(dplyr)
library(tidyverse)
library(leaflet.extras)
library(sf)
library(gapminder)
library(rgdal)
library(shinydashboard)
library(shiny)
library(scales)
library(DT)

service_calls <- read.csv("./data/Metro_CFS_OpenData_CLEAN.csv")
service_calls$Event_Date <- as.Date(service_calls$Event_Date, "%m/%d/%Y %H:%M")

service_calls <- service_calls %>%
  mutate(contentbox = paste('<b>',Type_Description,'</b>')) %>%
  mutate(contentbox = paste(sep = '<br/>', contentbox,Offender,Event_Date))

shapeGroups <- readOGR("data/Census Shp File Groups/cb_2018_32_bg_500k.shp")

EmploymentStatus <- read.csv("data/Census Employment Status/ACSDT5Y2019.B23025_data_with_overlays_2021-01-12T212705.csv")
MedianAge <- read.csv("data/Census Median Age by Sex/ACSDT5Y2019.B01002_data_with_overlays_2021-01-12T210241.csv")
MedianIncome <- read.csv("data/Census Median Household Income/ACSDT5Y2019.B19013_data_with_overlays_2021-01-09T133607.csv")
MedianHousePrice <- read.csv("data/Census Median Housing Price/ACSDT5Y2019.B25077_data_with_overlays_2021-01-12T211917.csv")
PovertyLevel <- read.csv("data/Census Poverty Level/ACSDT5Y2019.B29003_data_with_overlays_2021-01-12T212252.csv")
Vacancies <- read.csv("data/Census Vacancies/ACSDT5Y2019.B25004_data_with_overlays_2021-01-12T213202.csv")


EmploymentStatus <- merge(shapeGroups,EmploymentStatus,by.y = "id", by.x = "AFFGEOID",duplicateGeoms = T)
MedianAge <- merge(shapeGroups,MedianAge,by.y = "id", by.x = "AFFGEOID",duplicateGeoms = T)
MedianIncome <- merge(shapeGroups,MedianIncome,by.y = "id", by.x = "AFFGEOID",duplicateGeoms = T)
MedianHousePrice <- merge(shapeGroups,MedianHousePrice,by.y = "id", by.x = "AFFGEOID",duplicateGeoms = T)
PovertyLevel <- merge(shapeGroups,PovertyLevel,by.y = "id", by.x = "AFFGEOID",duplicateGeoms = T)
Vacancies <- merge(shapeGroups,Vacancies,by.y = "id", by.x = "AFFGEOID",duplicateGeoms = T)

CrimeIcons <- iconList(
  "DRIVE-BY SHOOTING"= makeIcon(iconUrl = './icons/Drive By.png', iconWidth = 35, iconHeight = 35),#
  "ASSAULT/BATTERY"= makeIcon(iconUrl = './icons/Assault.png', iconWidth = 35, iconHeight = 35),#
  "ASSAULT/BATTERY WITH A GUN"= makeIcon(iconUrl = './icons/Assualt with Gun.png', iconWidth = 35, iconHeight = 35),
  "ASSAULT/BATTERY WITH OTHER DEADLY WEAPON"= makeIcon(iconUrl = './icons/Assault with Deadly Weapon.png', iconWidth = 35, iconHeight = 35),
  "AUTO BURGLARY"= makeIcon(iconUrl = './icons/Auto Burglary.png', iconWidth = 35, iconHeight = 35),
  "BURGLARY"= makeIcon(iconUrl = './icons/Burglary.png', iconWidth = 35, iconHeight = 35),
  "FIGHT"= makeIcon(iconUrl = './icons/Fight.png', iconWidth = 35, iconHeight = 35),
  "HOMICIDE"= makeIcon(iconUrl = './icons/Homicide.png', iconWidth = 35, iconHeight = 35),
  "INDECENT EXPOSURE"= makeIcon(iconUrl = './icons/Indecent Exposure.png', iconWidth = 35, iconHeight = 35),
  "JUVENILE DISTURBANCE"= makeIcon(iconUrl = './icons/Juvenile Disturbance.png', iconWidth = 35, iconHeight = 35),
  "LARCENY FROM PERSON (NON ROBBERY)"= makeIcon(iconUrl = './icons/Larceny.png', iconWidth = 35, iconHeight = 35),
  "MALICIOUS DESTRUCTION OF PROPERTY"= makeIcon(iconUrl = './icons/Property Damage.png', iconWidth = 35, iconHeight = 35),#
  "OTHER DISTURBANCE"= makeIcon(iconUrl = './icons/Other Disturbance.png', iconWidth = 35, iconHeight = 35),#
  "PERSON WITH A GUN"= makeIcon(iconUrl = './icons/Gun.png', iconWidth = 35, iconHeight = 35),#
  "PERSON WITH A KNIFE"= makeIcon(iconUrl = './icons/Knife.png', iconWidth = 35, iconHeight = 35),#
  "PERSON WITH OTHER DEADLY WEAPON"= makeIcon(iconUrl = './icons/Deadly Weapon.png', iconWidth = 35, iconHeight = 35),#
  "RECOVERED STOLEN VEHICLE"= makeIcon(iconUrl = './icons/Recovered Vehicles.png', iconWidth = 35, iconHeight = 35),#
  "ROBBERY"= makeIcon(iconUrl = './icons/Robbery.png',iconWidth = 35,iconHeight = 35),
  "STOLEN MOTOR VEHICLE"= makeIcon(iconUrl = './icons/Stolen Motor Vehicle.png', iconWidth = 35, iconHeight = 35)
)

  businesses <- read.csv("./data/Business_Licenses_Data.csv")
businesses$Original_Issue_Date <- as.Date(businesses$Original_Issue_Date, "%m/%d/%Y %H:%M")

businesses <- businesses %>%
  mutate(contentbox = paste('<b>',Category_Description,'</b>')) %>%
  mutate(contentbox = paste(sep = '<br/>', contentbox,Business_Name,Original_Issue_Date))

