#' Get a message with a number of rows in a data frame of interest
#'
#' @param df : dataframe a renseigner
#'
#' @returns A number of row and a message in the console
#' @export
#' @importFrom glue glue
#' @examples
#' get_df_nrows(iris)
#' get_df_nrows(mtcars)
get_df_nrows <- function(df) {
  nrow_df <- nrow(df)

  message(glue("The dataset is composed of {nrow_df} observations"))
  return(nrow_df)
}
