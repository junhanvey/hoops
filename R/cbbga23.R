## code to prepare `cbbga23` dataset goes here
cbbga23 <- read.csv("data-raw/cbbga23.csv")
usethis::use_data(cbbga23, overwrite = TRUE)

