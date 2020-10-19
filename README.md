<!-- README.md is generated from README.Rmd. Please edit that file -->

qgis
====

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
<!-- badges: end -->

**qgis** is automatically generated package which originates from
[qgisprocess](https://github.com/paleolimbot/qgisprocess) and aims to
provide calls and simple documentation for each
[QGIS](https://qgis.org/en/site/) functions available in core and the
most important algorithm providers ([GRASS
GIS](https://grass.osgeo.org/) and [Saga](http://www.saga-gis.org/)).
The algorithms are automatically extracted from fresh install of latest
**QGIS** version on **Ubuntu** with packages for **GRASS** and **SAGA**
installed.

The package is highly experimental and things are quite likely to change
a lot in the future. The definition of individual functions can change
if it changes in the QGIS.

Installation
------------

You can install the released version of **qgis** from GitHub with:

    # install.package("remotes")
    remotes::install_github("JanCaha/r_package_qgis")

Functions names
---------------

The names of the functions follow general pattern of
`algorithm-provider_algorithm-id` with only the native **QGIS**
algorithms using `qgis` algorithm provider instead of `native`.

    #> Warning: Missing column names filled in: 'X1' [1]
    #> 
    #> [36m──[39m [1m[1mColumn specification[1m[22m [36m────────────────────────────────────────────────────────[39m
    #> cols(
    #>   X1 = [32mcol_double()[39m,
    #>   provider = [31mcol_character()[39m,
    #>   provider_title = [31mcol_character()[39m,
    #>   algorithm = [31mcol_character()[39m,
    #>   algorithm_id = [31mcol_character()[39m,
    #>   algorithm_title = [31mcol_character()[39m
    #> )

The available providers are:
`glue::glue_collapse(unique(algorithms$provider), sep = ", ")`. The
overall number of available algorithms is `nrow(algs)`.

Example
-------

The package is not meant to be load directly as this would significant
number of functions (&lt;900). Instead the functions should be called
as:

    qgis::qgis_buffer()

This allows you to show the help page for the function (at least in
**RStudio** using the key shortcut **F1**).

Example in the wild
-------------------

This example uses `qgisprocess` pipe ability to directly load output to
**R**.

    library(sf)
    #> Linking to GEOS 3.8.0, GDAL 3.0.4, PROJ 6.3.1

    fname <- system.file("shape/nc.shp", package="sf")
    nc <- st_read(fname)
    #> Reading layer `nc' from data source `/home/runner/work/_temp/Library/sf/shape/nc.shp' using driver `ESRI Shapefile'
    #> Simple feature collection with 100 features and 14 fields
    #> geometry type:  MULTIPOLYGON
    #> dimension:      XY
    #> bbox:           xmin: -84.32385 ymin: 33.88199 xmax: -75.45698 ymax: 36.58965
    #> geographic CRS: NAD27

    buffered <- qgis::qgis_buffer(INPUT = nc, 
                                  DISTANCE = 0.5, 
                                  END_CAP_STYLE = "Flat") %>% 
      st_as_sf()
    #> Argument `SEGMENTS` is unspecified (using QGIS default value).
    #> Using `JOIN_STYLE = "Round"`
    #> Argument `MITER_LIMIT` is unspecified (using QGIS default value).
    #> Argument `DISSOLVE` is unspecified (using QGIS default value).
    #> Using `OUTPUT = qgis_tmp_vector()`
    #> Running qgis_process run 'native:buffer' \
    #>   '--INPUT=/tmp/RtmpECT2Of/filea2d51c5b4f4/filea2d5794f3e7b.gpkg' \
    #>   '--DISTANCE=0.5' '--END_CAP_STYLE=1' '--JOIN_STYLE=0' \
    #>   '--OUTPUT=/tmp/RtmpECT2Of/filea2d51c5b4f4/filea2d51bacc127.gpkg'
    #> QStandardPaths: XDG_RUNTIME_DIR not set, defaulting to '/tmp/runtime-runner'
    #> 
    #> ----------------
    #> Inputs
    #> ----------------
    #> 
    #> DISTANCE:    0.5
    #> END_CAP_STYLE:   1
    #> INPUT:   /tmp/RtmpECT2Of/filea2d51c5b4f4/filea2d5794f3e7b.gpkg
    #> JOIN_STYLE:  0
    #> OUTPUT:  /tmp/RtmpECT2Of/filea2d51c5b4f4/filea2d51bacc127.gpkg
    #> 
    #> 0...10...20...30...40...50...60...70...80...90...
    #> ----------------
    #> Results
    #> ----------------
    #> 
    #> OUTPUT:  /tmp/RtmpECT2Of/filea2d51c5b4f4/filea2d51bacc127.gpkg

    plot(buffered)
    #> Warning: plotting the first 9 out of 14 attributes; use max.plot = 14 to plot
    #> all

<img src="man/figures/README-unnamed-chunk-4-1.png" width="100%" />
