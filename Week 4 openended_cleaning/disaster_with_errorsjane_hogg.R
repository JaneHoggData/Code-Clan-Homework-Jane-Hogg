library(tidyverse)
library(janitor)
library(readr)
disasters_with_errors <- read_csv("disasters_with_errors.csv")

#General review of the data
View(disasters_with_errors)
head(disasters_with_errors)
col(disasters_with_errors)

#General review of the data



disasters_with_errors%>%
  clean_names()

#clean names with janitor

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
#reduced the number of records to 460. This is a significant reduction from
##12397 so need to understand this a little more.

TotalDeathsclean <-disasters_with_errors%>%
  drop_na()

Total_deathclean

#simple view of this data does give me the answer to the question 1
##Needs more wokr 

view(TotalDeathsclean)

#Further code required to list only the top ten deaths - provides the result
## Earthquake in Indonesia in 2004 resulting in 165,816 deaths.
##This is not correct.
##Taking out the na also excludes the total damage variable and this
##significantly reduces the data set.
## But review of the clean data shows that there are further disasters that
##with higher death toll.  
Finaltop_tenDeaths <-TotalDeathsclean%>%
  arrange(desc(total_deaths))%>%
  head(10)
          
  
  Toptendeaths_no_na <- disasters_with_errors %>%
    arrange (desc (total_deaths))%>%
  head (10)

  #This provides the full data set with the 12,397 observations
  #12 varaibles - the removal of the na does reduce the data set down.
  #reverted to the initial data set.
  #This provides the result of the 1932 Russian Famine with an estimated
  #death toll of 5m people.
  

  ##Q2 - Country with the highest number of people impacted by disaster.
  
  #Tested the data for those with na using the select function
  ##3825 obs are then committed from the dataset.

  disaster_totaleffected<- disasters_with_errors%>%
    select(country_name, total_affected)%>%
    filter(is.na == TRUE (total_affected))
  

  disaster_excludingthena <-disasters_with_errors%>%
    select(country_name, total_affected)%>%
    filter(is.na == FALSE (total_affected))
  

total_effected_dropped <- disasters_with_errors%>%
  select(country_name, total_affected)%>%
  drop_na(total_affected)%>%
  arrange(desc(total_affected))
total_effected_dropped
 
##select function to identify country name and total affected.
##drop the na value and then arranged in desc order to provide china as answer.

total_china <-total_effected_dropped%>%
  select(country_name, total_affected)%>%
  filter(country_name  == "China")


###
total_china%>%
  summarise(total_affected = Summary.numeric_version(total_affected))
  mutate(sum/num(total_china))

total_china
