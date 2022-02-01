##' QGIS Algorithm provided by SAGA Enhanced vegetation index (saga:enhancedvegetationindex)
##'
##' @title QGIS algorithm Enhanced vegetation index
##'
##' @param BLUE `raster` - Blue Reflectance. Path to a raster layer.
##' @param RED `raster` - Red Reflectance. Path to a raster layer.
##' @param NIR `raster` - Near Infrared Reflectance. Path to a raster layer.
##' @param EVI `rasterDestination` - Enhanced Vegetation Index. Path for new raster layer.
##' @param GAIN `number` - Gain. A numeric value.
##' @param L `number` - Canopy Background Adjustment. A numeric value.
##' @param CBLUE `number` - Aerosol Resistance Coefficient (Blue). A numeric value.
##' @param CRED `number` - Aerosol Resistance Coefficient (Red). A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * EVI - outputRaster - Enhanced Vegetation Index
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_enhancedvegetationindex <- function(BLUE = qgisprocess::qgis_default_value(), RED = qgisprocess::qgis_default_value(), NIR = qgisprocess::qgis_default_value(), EVI = qgisprocess::qgis_default_value(), GAIN = qgisprocess::qgis_default_value(), L = qgisprocess::qgis_default_value(), CBLUE = qgisprocess::qgis_default_value(), CRED = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("saga:enhancedvegetationindex")

  output <- qgisprocess::qgis_run_algorithm("saga:enhancedvegetationindex", `BLUE` = BLUE, `RED` = RED, `NIR` = NIR, `EVI` = EVI, `GAIN` = GAIN, `L` = L, `CBLUE` = CBLUE, `CRED` = CRED,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "EVI")
  }
}