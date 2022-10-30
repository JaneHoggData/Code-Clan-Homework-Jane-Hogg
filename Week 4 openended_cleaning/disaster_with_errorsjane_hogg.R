library(tidyverse)
library(janitor)
library(readr)
disasters_with_errors <- read_csv("disasters_with_errors.csv")

#General review of the data
View(disasters_with_errors)
head(disasters_with_errors)
col(disasters_with_errors)

#clean names with janitor

disasters_with_errors%>%
  clean_names()

disasters_with_errors%>%
cols(iso = col_double())

disasters_with_errors%>%
  cols(country_name = col_double())


disasters_with_errors%>%
  cols(occurrence = col_double())

disasters_with_errors%>%
  filter(is.na(total_deaths))


Total_deathsnavalues <-disasters_with_errors%>%
  summarise(count = sum(is.na(total_deaths)))

#Dropped all the NA values on the total deaths - previous check of NA
#reduced the number of records to 460.

TotalDeathsclean <-disasters_with_errors%>%
  drop_na()

Total_deathclean

comms_data %>% 
  filter(is.na(monthly_charges))
summarise(1:10)

## Parsed with column specification:
## cols(
##   customerID = col_double(),
##   monthly_charges = col_double(),
##   total_charges = col_character(),
##   payment_method = col_character(),
##   churn = col_character()
## )