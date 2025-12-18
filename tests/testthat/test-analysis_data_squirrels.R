test_that("filter_squirrels_data_based_on_integrity works", {
  data_squirrels <- readxl::read_xlsx(
    system.file(
      "nyc_squirrels_client_file_to_be_used_as_reference.xlsx",
      package = "squirrels"
    )
  )

  data_test <- filter_squirrels_data_based_on_integrity(df_squirrels = data_squirrels)

  expect_equal(object = nrow(data_test[["df_valid_data"]]), expected = 354)
  expect_equal(object = nrow(data_test[["df_invalid_data"]]), expected = 6)
  expect_equal(object = nrow(data_test[["df_missing_data"]]), expected = 12)
})
