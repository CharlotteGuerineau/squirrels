test_that("save_as_csv fonctionne", {
  chemin_tmp <- tempfile(pattern = "output")
  dir.create(chemin_tmp)
  save_as_csv(data_demo_squirrels, path =file.path(chemin_tmp, "iris.csv"))

  expect_true(file.exists(file.path(chemin_tmp, "iris.csv")))

  #verifier que le fichier a taille>0
  #lire le fichier et verifier que le contenu est égal à iris

  unlink(chemin_tmp, recursive = TRUE)
})

test_that("save_as_csv gestion des erreurs", {

 expect_error(object = save_as_csv(data_demo_squirrels, path ="iris.xlsx"),
              regexp = "La chaîne de caractères qui correspond au chemin du fichier doit avoir l’extension .csv")

  expect_error(object = save_as_csv(4, path ="iris.xlsx"),
               regexp = "df doit être un data frame")

  expect_error(object = save_as_csv(data_demo_squirrels, path ="/toto/iris.csv"),
               regexp = "Le chemin renseigné n'existe pas")
})
