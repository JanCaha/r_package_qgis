##' QGIS Algorithm provided by SAGA Vegetation index (distance based) (saga:vegetationindexdistancebased)
##'
##' @title QGIS algorithm Vegetation index (distance based)
##'
##' @param RED `raster` - Red Reflectance. Path to a raster layer.
##' @param NIR `raster` - Near Infrared Reflectance. Path to a raster layer.
##' @param PVI0 `rasterDestination` - Perpendicular Vegetation Index (Richardson and Wiegand, 1977). Path for new raster layer.
##' @param PVI1 `rasterDestination` - Perpendicular Vegetation Index (Perry and Lautenschlager, 1984). Path for new raster layer.
##' @param PVI2 `rasterDestination` - Perpendicular Vegetation Index (Walther and Shabaani). Path for new raster layer.
##' @param PVI3 `rasterDestination` - Perpendicular Vegetation Index (Qi, et al., 1994). Path for new raster layer.
##' @param TSAVI `rasterDestination` - Transformed Soil Adjusted Vegetation Index (Baret et al. 1989). Path for new raster layer.
##' @param ATSAVI `rasterDestination` - Transformed Soil Adjusted Vegetation Index (Baret and Guyot, 1991). Path for new raster layer.
##' @param INTERCEPT `number` - Intercept of Soil Line. A numeric value.
##' @param SLOPE `number` - Slope of Soil Line. A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * PVI0 - outputRaster - Perpendicular Vegetation Index 
##' * PVI1 - outputRaster - Perpendicular Vegetation Index 
##' * PVI2 - outputRaster - Perpendicular Vegetation Index 
##' * PVI3 - outputRaster - Perpendicular Vegetation Index 
##' * TSAVI - outputRaster - Transformed Soil Adjusted Vegetation Index 
##' * ATSAVI - outputRaster - Transformed Soil Adjusted Vegetation Index 
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_vegetationindexdistancebased <- function(RED = qgisprocess::qgis_default_value(), NIR = qgisprocess::qgis_default_value(), PVI0 = qgisprocess::qgis_default_value(), PVI1 = qgisprocess::qgis_default_value(), PVI2 = qgisprocess::qgis_default_value(), PVI3 = qgisprocess::qgis_default_value(), TSAVI = qgisprocess::qgis_default_value(), ATSAVI = qgisprocess::qgis_default_value(), INTERCEPT = qgisprocess::qgis_default_value(), SLOPE = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("saga:vegetationindexdistancebased",`RED` = RED, `NIR` = NIR, `PVI0` = PVI0, `PVI1` = PVI1, `PVI2` = PVI2, `PVI3` = PVI3, `TSAVI` = TSAVI, `ATSAVI` = ATSAVI, `INTERCEPT` = INTERCEPT, `SLOPE` = SLOPE,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "PVI0")
  }
}