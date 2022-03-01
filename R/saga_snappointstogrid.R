##' QGIS Algorithm provided by SAGA Snap points to grid (saga:snappointstogrid)
##'
##' @title QGIS algorithm Snap points to grid
##'
##' @param INPUT `source` - Points. Path to a vector layer.
##' @param GRID `raster` - Grid. Path to a raster layer.
##' @param OUTPUT `vectorDestination` - Result. Path for new vector layer.
##' @param MOVES `vectorDestination` - Moves. Path for new vector layer.
##' @param DISTANCE `number` - Search Distance (Map Units). A numeric value.
##' @param SHAPE `enum`  of `("[0] circle", "[1] square")` - Search Shape. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param EXTREME `enum`  of `("[0] minimum", "[1] maximum")` - Extreme. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * MOVES - outputVector - Moves
##' * OUTPUT - outputVector - Result
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_snappointstogrid <- function(INPUT = qgisprocess::qgis_default_value(), GRID = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(), MOVES = qgisprocess::qgis_default_value(), DISTANCE = qgisprocess::qgis_default_value(), SHAPE = qgisprocess::qgis_default_value(), EXTREME = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:snappointstogrid")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:snappointstogrid", `INPUT` = INPUT, `GRID` = GRID, `OUTPUT` = OUTPUT, `MOVES` = MOVES, `DISTANCE` = DISTANCE, `SHAPE` = SHAPE, `EXTREME` = EXTREME,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:snappointstogrid", `INPUT` = INPUT, `GRID` = GRID, `OUTPUT` = OUTPUT, `MOVES` = MOVES, `DISTANCE` = DISTANCE, `SHAPE` = SHAPE, `EXTREME` = EXTREME,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "MOVES")
  }
}