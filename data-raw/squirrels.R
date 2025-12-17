## code to prepare `squirrels` dataset goes here

library(readr)
library(dplyr)

data_demo_squirrels <- read_csv("data-raw/nyc_squirrels_reduced.csv") |>
  dplyr::slice_sample(n=25)

usethis::use_data(data_demo_squirrels, overwrite = TRUE)

checkhelper::use_data_doc("data_demo_squirrels", prefix = "doc_")
