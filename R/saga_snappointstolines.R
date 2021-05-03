##' QGIS Algorithm provided by SAGA Snap points to lines (saga:snappointstolines)
##'
##' @title QGIS algorithm Snap points to lines
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
##' * OUTPUT - outputVector - Result
##' * MOVES - outputVector - Moves
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_snappointstolines <- function(INPUT = qgisprocess::qgis_default_value(), SNAP = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(), MOVES = qgisprocess::qgis_default_value(), DISTANCE = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_QGIS_versions()
  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("saga:snappointstolines")
  output <- qgisprocess::qgis_run_algorithm("saga:snappointstolines",`INPUT` = INPUT, `SNAP` = SNAP, `OUTPUT` = OUTPUT, `MOVES` = MOVES, `DISTANCE` = DISTANCE,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}