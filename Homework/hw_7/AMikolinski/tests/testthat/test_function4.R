library(testthat)
library("AMikolinski")
context("Testing Commands")

setwd("C:\\Users\\andre\\Documents\\BIOL7800\\Project Proposal\\Raw_Data")
EriL <- read.csv("Ericales.csv")

ngreater_mlatlongdf <- function(a, b, c, d, e, f){
  x1 <- c
  y1 <- b
  x2 <- e
  y2 <- d
  m <- ((y2 - y1) / (x2 - x1))
  int <- y1 - (m * x1)
  subset <- (data.frame(a[a$decimalLatitude > d & a$decimalLatitude < b & a$decimalLatitude > ((m * a$decimalLongitude) + int) & a$decimalLongitude > ((a$decimalLatitude - int)/m), ]))
  return(subset[subset$stateProvince == f, ])
}
testthat("Error returned when working with non-character or non-numeric input input", {
  expect_error(ngreater_mlatlongdf(1:5))
})
test_that("It should work with character input", {
  expect_equal(ngreater_mlatlongdf(EriL, 35.011333, -84.692971, 34.516167, -84.521330, "Georgia"))
})
