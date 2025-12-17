test_that("le df possède bien les colonnes nécessaires", {
  expect_equal(object = check_presence_of_required_columns(data_demo_squirrels),
              expected = TRUE)
})

test_that("le df possède bien les colonnes nécessaires", {
  expect_error(object = check_presence_of_required_columns(mtcars))

  expect_error(object = check_presence_of_required_columns(system.file("inst/nyc_squirrels_act_sample.csv", package = "squirrels")))
})
