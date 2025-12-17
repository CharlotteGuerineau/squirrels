test_that("Check colors_are_ok", {
  expect_equal(object = check_plus_in_primary_fur_color(primary_fur_color = c("Black", "Black+Cinnamon", "Cinnamon")),
               expected = c(TRUE, FALSE, TRUE))

  expect_error(object = check_plus_in_primary_fur_color(primary_fur_color = 13),
               regexp = "primary_fur_color should be a character")
})
