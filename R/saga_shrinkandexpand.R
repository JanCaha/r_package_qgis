##' QGIS Algorithm provided by SAGA Shrink and expand (saga:shrinkandexpand)
##'
##' @title QGIS algorithm Shrink and expand
##'
##' @param INPUT `raster` - Grid. Path to a raster layer.
##' @param OPERATION `enum`  of `("[0] Shrink", "[1] Expand", "[2] shrink and expand", "[3] expand and shrink")` - Operation. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param CIRCLE `enum`  of `("[0] Square", "[1] Circle")` - Search Mode. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param RADIUS `number` - Radius. A numeric value.
##' @param EXPAND `enum`  of `("[0] min", "[1] max", "[2] mean", "[3] majority")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param RESULT `rasterDestination` - Result Grid. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * RESULT - outputRaster - Result Grid
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

saga_shrinkandexpand <- function(INPUT = qgisprocess:::qgis_default_value(), OPERATION = qgisprocess:::qgis_default_value(), CIRCLE = qgisprocess:::qgis_default_value(), RADIUS = qgisprocess:::qgis_default_value(), EXPAND = qgisprocess:::qgis_default_value(), RESULT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:shrinkandexpand")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:shrinkandexpand", `INPUT` = INPUT, `OPERATION` = OPERATION, `CIRCLE` = CIRCLE, `RADIUS` = RADIUS, `EXPAND` = EXPAND, `RESULT` = RESULT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:shrinkandexpand", `INPUT` = INPUT, `OPERATION` = OPERATION, `CIRCLE` = CIRCLE, `RADIUS` = RADIUS, `EXPAND` = EXPAND, `RESULT` = RESULT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "RESULT")
  }
}