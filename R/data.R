#' Climatic data of station 07460 from Meteo-France during March 2019
#'
#' A dataset containing some climatic variables measured at the station 07460 near
#' Clermont-Ferrand during March 2019.
#'
#' @format A data frame with 197 rows and 7 columns :
#' \describe{
#'   \item{date}{Date and time of measure with format YmdHMS}
#'   \item{wind_dir}{Mean of 10 minutes interval wind direction in degree}
#'   \item{wind_speed}{Mean of 10 minutes interval wind speed in m/s}
#'   \item{temp}{Temperature in Kelvin}
#'   \item{w}{Humidity in \%}
#'   \item{pres}{Pressure in Pa}
#'   \item{precipitation}{Precipitation during the last 3 hours in mm}
#' }
#' @source \url{https://donneespubliques.meteofrance.fr/?fond=produit&id_produit=90&id_rubrique=32}
"meteoClermont"
