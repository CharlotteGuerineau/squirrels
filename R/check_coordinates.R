#' Checks if the coordinates are in Central Park
#'
#' @param latitude numeric. A vector with the latitude.
#' @param longitude numeric. A vector with the longitude.
#' @return a vector of logicals
#' @examples
#'both_valid_latitude <- c(40.766, 40.799)
#'both_valid_longitude <- c(-73.96, -73.95)
#'check_coordinates(
#'latitude = both_valid_latitude,
#'longitude = both_valid_longitude
#')
#' @export
check_coordinates <- function(latitude, longitude) {
  if (isFALSE(is.numeric(latitude)) | isFALSE(is.numeric(longitude))) {
    stop("latitude and longitude should be numeric")
  }

  coordinates_are_ok <-
    latitude > 40.76400 & latitude < 40.80100 &
    longitude > -73.98300 & longitude < -73.94735

  return(coordinates_are_ok)
}
