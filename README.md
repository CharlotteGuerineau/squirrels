
<!-- README.md is generated from README.Rmd. Please edit that file -->

# squirrels

<!-- badges: start -->

<!-- badges: end -->

Le but du package squirrels est de décrire la population d’écureuils de
NYC.

## Installation

You can install the development version of squirrels like so:

``` r
library(squirrels)
```

## Example

Voici un exemple basique qui vous permettra de vérifier si les couleurs
de fourrure indiquées sont simple ou multiple :

``` r
library(squirrels)
library(stringr)
## basic example code

check_plus_in_primary_fur_color(
  primary_fur_color = c("Black", "Black+Cinnamon", "Cinnamon")
  )
#> [1]  TRUE FALSE  TRUE
```

Vous pouvez également vérifier que les coordonnées GPS renseignées sont
bien celles de Central Park :

``` r
both_valid_latitude <- c(40.766, 40.799)
both_valid_longitude <- c(-73.96, -73.95)

check_coordinates(
  latitude = both_valid_latitude,
  longitude = both_valid_longitude
)
#> [1] TRUE TRUE
```
