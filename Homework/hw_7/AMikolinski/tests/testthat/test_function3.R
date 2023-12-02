library(testthat)
library("AMikolinski")
context("Testing Commands")

setwd("C:\\Users\\andre\\Documents\\BIOL7800\\Project Proposal\\Raw_Data")
EriL <- read.csv("Ericales.csv")

greater_mlatlongdf <- function(a, b, c, d, e, f){
  x1 <- c
  y1 <- b
  x2 <- e
  y2 <- d
  m <- ((y2 - y1) / (x2 - x1))
  int <- y1 - (m * x1)
  subset <- (data.frame(a[a$decimalLatitude > b &a$decimalLatitude <d & a$decimalLatitude > ((m * a$decimalLongitude) + int) & a$decimalLongitude < ((a$decimalLatitude - int)/m), ]))
  return(subset[subset$stateProvince == f, ])
}
testthat("Error returned when working with non-character or non-numeric input input", {
  expect_error(greater_mlatlongdf(1:5))
})
test_that("It should work with character and numeric input", {
  expect_equal(greater_mlatlongdf(EriL, 36.572383, -77.667126, 38.502839, -77.304794, "Virginia"))
})

