#' Fatality Analysis Reporting System (FARS)
#'
#' A dataset containing records of fatal automotive accidents in the US;
#'  Unknown/unreported values removed
#'
#' @format A data frame with 2110 rows and 81 variables:
#' \describe{
#'   \item{LONGITUD}{Longitude (deimal notation)}
#'   \item{LATITUDE}{Latitude (decimal notation)}
#'   ...
#' }
#' @source \url{http://https://www.nhtsa.gov/research-data/fatality-analysis-reporting-system-fars/}
"fars_accidents"

## code to prepare `DATASET` dataset goes here

library(readr)
library(dplyr)

setwd("data-raw/")
fars_accidents <- readr::read_csv("accident.csv") #%>%
  #dplyr::filter(dplyr::across(.cols = is.character,
               # .fns = ~!str_detect(., "((?i)not reported)|(?i)unknown|(?i)not available")))

usethis::use_data(fars_accidents, overwrite = TRUE)

