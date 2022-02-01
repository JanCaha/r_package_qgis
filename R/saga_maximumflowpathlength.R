##' QGIS Algorithm provided by SAGA Maximum flow path length (saga:maximumflowpathlength)
##'
##' @title QGIS algorithm Maximum flow path length
##'
##' @param ELEVATION `raster` - Elevation. Path to a raster layer.
##' @param WEIGHTS `raster` - Weights. Path to a raster layer.
##' @param DISTANCE `rasterDestination` - Flow Path Length. Path for new raster layer.
##' @param DIRECTION `enum`  of `("[0] downstream", "[1] upstream")` - Direction of Measurement. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * DISTANCE - outputRaster - Flow Path Length
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_maximumflowpathlength <- function(ELEVATION = qgisprocess::qgis_default_value(), WEIGHTS = qgisprocess::qgis_default_value(), DISTANCE = qgisprocess::qgis_default_value(), DIRECTION = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("saga:maximumflowpathlength")

  output <- qgisprocess::qgis_run_algorithm("saga:maximumflowpathlength", `ELEVATION` = ELEVATION, `WEIGHTS` = WEIGHTS, `DISTANCE` = DISTANCE, `DIRECTION` = DIRECTION,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "DISTANCE")
  }
}