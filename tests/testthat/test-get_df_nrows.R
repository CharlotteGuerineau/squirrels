test_that("get_df_nrows works", {

  expect_message(
    object = get_df_nrows(df = mtcars),
    regexp = "The dataset is composed of 32 observations"
  )
})

test_that("get_df_nrows value", {

  expect_equal(
    object = get_df_nrows(iris),
    expected = 150
  )

  expect_equal(
    object = get_df_nrows(mtcars),
    expected = 32
  )
})
