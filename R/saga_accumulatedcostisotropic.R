##' QGIS Algorithm provided by SAGA Accumulated cost (isotropic) (saga:accumulatedcostisotropic)
##'
##' @title QGIS algorithm Accumulated cost (isotropic)
##'
##' @param COST `raster` - Cost Grid. Path to a raster layer.
##' @param POINTS `raster` - Destination Points. Path to a raster layer.
##' @param THRESHOLD `number` - Threshold for different route. A numeric value.
##' @param ACCCOST `rasterDestination` - Accumulated Cost. Path for new raster layer.
##' @param CLOSESTPT `rasterDestination` - Closest Point. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * ACCCOST - outputRaster - Accumulated Cost
##' * CLOSESTPT - outputRaster - Closest Point
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_accumulatedcostisotropic <- function(COST = qgisprocess::qgis_default_value(), POINTS = qgisprocess::qgis_default_value(), THRESHOLD = qgisprocess::qgis_default_value(), ACCCOST = qgisprocess::qgis_default_value(), CLOSESTPT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("saga:accumulatedcostisotropic",`COST` = COST, `POINTS` = POINTS, `THRESHOLD` = THRESHOLD, `ACCCOST` = ACCCOST, `CLOSESTPT` = CLOSESTPT,...)
  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "ACCCOST")
}
}