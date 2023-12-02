plot_data <- function(a){
  us_map <- map_data("state")
  p <- ggplot() +
    geom_polygon(data = us_map, aes(x = long, y = lat, group = group),
                 fill = "white", color = "black", size = 0.5) +
    coord_fixed(ratio = 1.2, xlim = c(-125, -66), ylim = c(24, 49)) +
    theme_void()
  return(p + geom_point(data = a, aes(x = a$decimalLongitude, y = a$decimalLatitude), color = "red", size = 0.5))
}

less_mlatlongdf <- function(a, b, c, d, e, f){
  x1 <- c
  y1 <- b
  x2 <- e
  y2 <- d
  m <- ((y2 - y1) / (x2 - x1))
  int <- y1 - (m * x1)
  subset <- (data.frame(a[a$decimalLatitude > b & a$decimalLatitude < d & a$decimalLatitude < ((m * a$decimalLongitude) + int) & a$decimalLongitude > ((a$decimalLatitude - int)/m), ]))
  return(subset[subset$stateProvince == f, ])
}
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
nless_mlatlongdf <- function(a, b, c, d, e, f){
  x1 <- c
  y1 <- b
  x2 <- e
  y2 <- d
  m <- ((y2 - y1) / (x2 - x1))
  int <- y1 - (m * x1)
  subset <- (data.frame(a[a$decimalLatitude > d & a$decimalLatitude < b & a$decimalLatitude < ((m * a$decimalLongitude) + int) & a$decimalLongitude < ((a$decimalLatitude - int)/m), ]))
  return(subset[subset$stateProvince == f, ])
}
devtools::test()
