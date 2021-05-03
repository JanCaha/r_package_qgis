##' QGIS Algorithm provided by SAGA Accumulated cost (anisotropic) (saga:accumulatedcostanisotropic)
##'
##' @title QGIS algorithm Accumulated cost (anisotropic)
##'
##' @param COST `raster` - Cost Grid. Path to a raster layer.
##' @param DIRECTION `raster` - Direction of max cost. Path to a raster layer.
##' @param POINTS `raster` - Destination Points. Path to a raster layer.
##' @param K `number` - k factor. A numeric value.
##' @param THRESHOLD `number` - Threshold for different route. A numeric value.
##' @param ACCCOST `rasterDestination` - Accumulated Cost. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * ACCCOST - outputRaster - Accumulated Cost
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_accumulatedcostanisotropic <- function(COST = qgisprocess::qgis_default_value(), DIRECTION = qgisprocess::qgis_default_value(), POINTS = qgisprocess::qgis_default_value(), K = qgisprocess::qgis_default_value(), THRESHOLD = qgisprocess::qgis_default_value(), ACCCOST = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("saga:accumulatedcostanisotropic")

  output <- qgisprocess::qgis_run_algorithm("saga:accumulatedcostanisotropic", `COST` = COST, `DIRECTION` = DIRECTION, `POINTS` = POINTS, `K` = K, `THRESHOLD` = THRESHOLD, `ACCCOST` = ACCCOST,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "ACCCOST")
  }
}