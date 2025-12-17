test_that("coordonnees non numeriques", {
  expect_error(object = check_coordinates(latitude="toto", longitude = "toto"))
})

test_that("Coordonnées ok", {
  expect_equal(object=check_coordinates(
    latitude = c(40.766, 40.799),
    longitude = c(-73.96, -73.95)
  ),
  expected = c(TRUE, TRUE))
})

test_that("Coordonnées pas ok", {
  expect_equal(object=check_coordinates(
    latitude = c(30, 32),
    longitude = c(-100, -99)
  ),
  expected = c(FALSE, FALSE))
})
