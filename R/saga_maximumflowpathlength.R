##' QGIS Algorithm provided by SAGA Maximum flow path length (saga:maximumflowpathlength)
##'
##' @title QGIS algorithm Maximum flow path length
##'
##' @param ELEVATION `raster` - Elevation. Path to a raster layer.
##' @param WEIGHTS `raster` - Weights. Path to a raster layer.
##' @param DISTANCE `rasterDestination` - Flow Path Length. Path for new raster layer.
##' @param DIRECTION `enum`  of `("[0] downstream", "[1] upstream")` - Direction of Measurement. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * DISTANCE - outputRaster - Flow Path Length
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

saga_maximumflowpathlength <- function(ELEVATION = qgisprocess:::qgis_default_value(), WEIGHTS = qgisprocess:::qgis_default_value(), DISTANCE = qgisprocess:::qgis_default_value(), DIRECTION = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:maximumflowpathlength")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:maximumflowpathlength", `ELEVATION` = ELEVATION, `WEIGHTS` = WEIGHTS, `DISTANCE` = DISTANCE, `DIRECTION` = DIRECTION,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:maximumflowpathlength", `ELEVATION` = ELEVATION, `WEIGHTS` = WEIGHTS, `DISTANCE` = DISTANCE, `DIRECTION` = DIRECTION,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "DISTANCE")
  }
}