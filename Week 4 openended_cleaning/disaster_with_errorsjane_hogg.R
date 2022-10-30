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

#simple view of this data does give me the answer to the question 1

view(TotalDeathsclean)

#Further code required to list only the top ten deaths - provides the result
## Earthquake in Indonesia in 2004 resulting in 165,816 deaths
## But review of the clean data shows that there are further disasters that
##with higher death toll.  Return to this later in the day.
Finaltop_tenDeaths <-TotalDeathsclean%>%
  arrange(desc(total_deaths))%>%
  head(10)
          
  
  






 


## Parsed with column specification:
## cols(
##   customerID = col_double(),
##   monthly_charges = col_double(),
##   total_charges = col_character(),
##   payment_method = col_character(),
##   churn = col_character()
## )