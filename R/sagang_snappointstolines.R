##' QGIS Algorithm provided by SAGA Next Gen Snap points to lines (sagang:snappointstolines). ---------------- Arguments ----------------  INPUT: Points 	Argument type:	source 	Acceptable values: 		- Path to a vector layer SNAP: Snap Features 	Argument type:	source 	Acceptable values: 		- Path to a vector layer OUTPUT: Result 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer MOVES: Moves 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer DISTANCE: Search Distance 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Snap points to lines
##'
##' @param INPUT `source` - Points. Path to a vector layer.
##' @param SNAP `source` - Snap Features. Path to a vector layer.
##' @param OUTPUT `vectorDestination` - Result. Path for new vector layer.
##' @param MOVES `vectorDestination` - Moves. Path for new vector layer.
##' @param DISTANCE `number` - Search Distance. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
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
##' @importFrom qgisprocess qgis_run_algorithm

sagang_snappointstolines <- function(INPUT = qgisprocess:::qgis_default_value(), SNAP = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(), MOVES = qgisprocess:::qgis_default_value(), DISTANCE = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:snappointstolines")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:snappointstolines", `INPUT` = INPUT, `SNAP` = SNAP, `OUTPUT` = OUTPUT, `MOVES` = MOVES, `DISTANCE` = DISTANCE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:snappointstolines", `INPUT` = INPUT, `SNAP` = SNAP, `OUTPUT` = OUTPUT, `MOVES` = MOVES, `DISTANCE` = DISTANCE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "MOVES")
  }
}