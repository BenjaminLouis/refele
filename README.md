[![lifecycle](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
[![Travis build status](https://travis-ci.org/BenjaminLouis/refele.svg?branch=master)](https://travis-ci.org/BenjaminLouis/refele)
[![AppVeyor build status](https://ci.appveyor.com/api/projects/status/github/BenjaminLouis/refele?branch=master&svg=true)](https://ci.appveyor.com/project/BenjaminLouis/refele)
[![Coverage status](https://codecov.io/gh/BenjaminLouis/refele/branch/master/graph/badge.svg)](https://codecov.io/github/BenjaminLouis/refele?branch=master)

# Package `refele`

The goal of refele is to provide some functions to help analyse data from the long-term system of observation and experimentation (SOERE) [EFELE](https://www6.rennes.inra.fr/umrsas/Outils-et-dispositifs/Dispositifs/EFELE) managed by [Thierry Morvan](https://www6.rennes.inra.fr/umrsas/Decouvrez-nous/Annuaire-du-personnel/MORVAN-Thierry) at INRA.

Be aware that `refele` is a work in progress and any issues can be be reported [here](https://github.com/BenjaminLouis/refele/issues).

## Installation

You can install the development version of `refele` from [GitHub](https://github.com/) with:

``` r
#install.packages("devtools")
devtools::install_github("BenjaminLouis/refele")
```

## Use of package refele

For now, refele functions allows to :

+ Summarise hourly climatic data towards daily climatic data with `summarise_daily`

To see full explanation of how using `refele`, after installing the package, you can see the vignette with :

``` r
vignette("refele", package = "refele")
```

## Credits

Example dataset comes from [Météo-france](https://donneespubliques.meteofrance.fr/?fond=produit&id_produit=90&id_rubrique=32)

## Code of conduct

Please note that the `refele` project is released with a [Contributor Code of Conduct](CODE_OF_CONDUCT.md). By contributing to this project, you agree to abide by its terms.
