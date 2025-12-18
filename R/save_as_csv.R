#' Sauvegarde d'un df en csv
#'
#' @param df df a exporter
#' @param path chemin de sortie
#' @return le chemin de sortie
#' @importFrom tools file_ext
#' @importFrom readr write_csv2
#' @examples
#' chemin_tmp <- tempfile(pattern = "output")
#' dir.create(chemin_tmp)
#' save_as_csv(data_demo_squirrels, path =file.path(chemin_tmp, "iris.csv"))
#' unlink(chemin_tmp, recursive = TRUE)
#'
#'
#' @export
save_as_csv <- function(df, path){

  if(isFALSE(inherits(df, "data.frame"))){
    stop("df doit \u00eatre un data frame")
  }

  if(isFALSE(dir.exists(dirname(path)))){
    stop("Le chemin renseign\u00e9 n\'existe pas")
  }

  if(isTRUE(file_ext(path)!="csv")){
    stop("La cha\u00eene de caract\u00e8res qui correspond au chemin du fichier doit avoir l\u2019extension .csv")
  }

  write_csv2(df, file = path)

  return(path)

}
