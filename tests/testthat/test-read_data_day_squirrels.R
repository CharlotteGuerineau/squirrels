library(purrr)

test_that("read_data_day_squirrels works", {
  lst_fic <- list.files(
    path = system.file(package = "squirrels"),
    pattern = "nyc_squirrels_[0-9][0-9].xlsx",
    full.names = TRUE
  )

  lst_dir <- map_chr(.x = lst_fic, .f = dirname) |> unique()

  squirrels <- read_data_day_squirrels(lst_dir)

  nrow_squirrels <- map(.x = squirrels, .f = nrow)

  expect_equal(object = nrow(squirrels$`17`), expected = 65)
  expect_equal(object = nrow(squirrels$`19`), expected = 47)
  expect_equal(object = nrow(squirrels$`20`), expected = 20)
})

test_that("read_data_day_squirrels don't works", {
  expect_error(object = read_data_day_squirrels("/toto"),
               regexp = "Path does not exist")

  chemin <- tempfile(pattern = "toto")
  dir.create(chemin)
  expect_error(object = read_data_day_squirrels(chemin),
               regexp = "There is no files corresponding to raw squirrels data in this folder")
})
