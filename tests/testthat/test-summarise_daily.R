context("test-summarise_daily")

test_that("warning works", {
  expect_warning(summarise_daily(meteoClermont, date, wind_dir:pres, precipitation),
                 "was parsed to a Date-Time class with a guessed format")
})

test_that("return object class works", {

  # Run
  library(dplyr, warn.conflicts = FALSE)
  library(lubridate, warn.conflicts = FALSE)
  dat <- meteoClermont %>%
    mutate(date = ymd_hms(date))
  result <- summarise_daily(dat, date, wind_dir:pres, precipitation)

  # test class
  expect_is(result, "tbl_df")

})


test_that("dimension of object class works", {

  # Run
  library(dplyr, warn.conflicts = FALSE)
  library(lubridate, warn.conflicts = FALSE)
  dat <- meteoClermont %>%
    mutate(date = ymd_hms(date))
  ndat <- pull(dat, date) %>% day() %>% max()
  result <- summarise_daily(dat, date, wind_dir:pres, precipitation)

  # test class
  expect_equal(dim(result), c(ndat, 7))

})

