#' Summarise (sum or average) time series data at a daily scale
#'
#' @param .data a dataframe with the data to summarise
#' @param .timevar unquoted name of the column with date-time data
#' @param .cumul vector of unquoted name of columns with data to sum along each days
#' @param .average vector of unquoted name of columns with data to average along each days
#'
#' @return a dataframe with the requested columns summarised at a daily scale
#'
#' @export
#'
#' @importFrom dplyr '%>%' enquo quo_name enquos as_tibble summarise_at vars pull mutate_at mutate select group_by summarise_all full_join
#' @importFrom lubridate as_datetime floor_date
#'
#' @examples
#' library(dplyr)
#' library(lubridate)
#' dat <- meteoClermont %>%
#'   mutate(date = ymd_hms(date))
#' summarise_daily(dat, date, wind_dir:pres, precipitation)
summarise_daily <- function(.data, .timevar, .cumul, .average) {

  # Tidy eval
  timevar <- enquo(.timevar)
  timevarname <- quo_name(timevar)
  cumul <- enquos(.cumul)
  average <- enquos(.average)

  # Tibble
  dat <- as_tibble(.data)

  # Is tmevar a date?
  timevarclass <- dat %>% summarise_at(vars(timevarname), ~class(.)[1]) %>% pull()
  if (!timevarclass %in% c("POSIXct")) {
    dat <- mutate_at(dat, vars(timevarname), as_datetime)
    warning(paste0(timevarname, " was parsed to a Date-Time class with a guessed format.\n If you find an error, try to parse with a known format before using this function. See functions as.Date or lubridate::as_datetime"))
  }

  # Transform date to days
  dat <- dat %>%
    mutate(the_days = floor_date(!!timevar, unit = "day"))


  # Sum cumul data
  datsum <- dat %>%
    select(the_days, !!!cumul) %>%
    group_by(the_days) %>%
    summarise_all(sum, na.rm = TRUE)

  # Mean average data
  datav <- dat %>%
    select(the_days, !!!average) %>%
    group_by(the_days) %>%
    summarise_all(mean, na.rm = TRUE)

  # Joining both dataset
  full_join(datsum, datav, by = "the_days")

}

# test pour savoir si timevar est bien une date
# test dimension de full_join
