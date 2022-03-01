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

saga_snappointstolines <- function(INPUT = qgisprocess::qgis_default_value(), SNAP = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(), MOVES = qgisprocess::qgis_default_value(), DISTANCE = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:snappointstolines")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:snappointstolines", `INPUT` = INPUT, `SNAP` = SNAP, `OUTPUT` = OUTPUT, `MOVES` = MOVES, `DISTANCE` = DISTANCE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:snappointstolines", `INPUT` = INPUT, `SNAP` = SNAP, `OUTPUT` = OUTPUT, `MOVES` = MOVES, `DISTANCE` = DISTANCE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "MOVES")
  }
}