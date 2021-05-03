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
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Result
##' * MOVES - outputVector - Moves
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_snappointstogrid <- function(INPUT = qgisprocess::qgis_default_value(), GRID = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(), MOVES = qgisprocess::qgis_default_value(), DISTANCE = qgisprocess::qgis_default_value(), SHAPE = qgisprocess::qgis_default_value(), EXTREME = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("saga:snappointstogrid")

  output <- qgisprocess::qgis_run_algorithm("saga:snappointstogrid", `INPUT` = INPUT, `GRID` = GRID, `OUTPUT` = OUTPUT, `MOVES` = MOVES, `DISTANCE` = DISTANCE, `SHAPE` = SHAPE, `EXTREME` = EXTREME,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}