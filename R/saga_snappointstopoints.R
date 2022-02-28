##' QGIS Algorithm provided by SAGA Snap points to points (saga:snappointstopoints)
##'
##' @title QGIS algorithm Snap points to points
##'
##' @param INPUT `source` - Points. Path to a vector layer.
##' @param SNAP `source` - Snap Features. Path to a vector layer.
##' @param OUTPUT `vectorDestination` - Result. Path for new vector layer.
##' @param MOVES `vectorDestination` - Moves. Path for new vector layer.
##' @param DISTANCE `number` - Search Distance. A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
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

saga_snappointstopoints <- function(INPUT = qgisprocess::qgis_default_value(), SNAP = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(), MOVES = qgisprocess::qgis_default_value(), DISTANCE = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("saga:snappointstopoints")

  output <- qgisprocess::qgis_run_algorithm("saga:snappointstopoints", `INPUT` = INPUT, `SNAP` = SNAP, `OUTPUT` = OUTPUT, `MOVES` = MOVES, `DISTANCE` = DISTANCE,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "MOVES")
  }
}