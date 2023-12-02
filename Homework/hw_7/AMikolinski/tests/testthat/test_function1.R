library(testthat)
library("AMikolinski")
context("Testing Commands")

setwd("C:\\Users\\andre\\Documents\\BIOL7800\\Project Proposal\\Raw_Data")
EriL <- read.csv("Ericales.csv")

plot_data <- function(a){
  us_map <- map_data("state")
  p <- ggplot() +
    geom_polygon(data = us_map, aes(x = long, y = lat, group = group),
                 fill = "white", color = "black", size = 0.5) +
    coord_fixed(ratio = 1.2, xlim = c(-125, -66), ylim = c(24, 49)) +
    theme_void()
  return(p + geom_point(data = a, aes(x = a$decimalLongitude, y = a$decimalLatitude), color = "red", size = 0.5))
}

context("Testing Commands")

testthat("Error returned when working with non-character input"{
  expect_error(plot_data(1:5))
})
test_that("It should work with character input", {
  expect_equal(plot_data(EriL))

})

