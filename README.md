
<!-- README.md is generated from README.Rmd. Please edit that file -->

# CASToolClusterPckg

<!-- badges: start -->
<!-- badges: end -->

The goal of CASToolClusterPckg is to serve state stream reach cluster
assignments and figures.

## Installation

You can install the development version of CASToolClusterPckg from
[GitHub](https://github.com/) with:

``` r
# install.packages("pak")
pak::pak("laura-naslund/CASToolClusterPckg")
```

## Example

This is an example of how to retrieve the cluster assignments data and
the cluster assignments figure.

``` r
library(CASToolClusterPckg)

## Retrieve cluster data frame
de_clust_2 <- retrieve_clust_data("Delaware", 2)
head(de_clust_2)
#>     COMID ClusterID
#> 1 8074152         1
#> 2 8074186         1
#> 3 8075750         1
#> 4 8075734         1
#> 5 8075738         1
#> 6 8075744         1

## Retrieve cluster figure
de_clust_2_fig <- retrieve_clust_fig("Delaware", 2)
magick::image_read(de_clust_2_fig)
```

<img src="man/figures/README-example-1.png" width="100%" />
