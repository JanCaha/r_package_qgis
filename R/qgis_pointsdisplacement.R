##' QGIS Algorithm provided by QGIS Points displacement (qgis:pointsdisplacement). Offsets nearby point features by moving nearby points by a preset amount to minimize overlapping features.
##'
##' @title QGIS algorithm - Points displacement
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param PROXIMITY `distance` - Minimum distance to other points. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param DISTANCE `distance` - Displacement distance. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param HORIZONTAL `boolean` - Horizontal distribution for two point case. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTPUT `sink` - Displaced. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Displaced
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_pointsdisplacement <- function(INPUT = qgisprocess:::qgis_default_value(), PROXIMITY = qgisprocess:::qgis_default_value(), DISTANCE = qgisprocess:::qgis_default_value(), HORIZONTAL = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("qgis:pointsdisplacement")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("qgis:pointsdisplacement", `INPUT` = INPUT, `PROXIMITY` = PROXIMITY, `DISTANCE` = DISTANCE, `HORIZONTAL` = HORIZONTAL, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("qgis:pointsdisplacement", `INPUT` = INPUT, `PROXIMITY` = PROXIMITY, `DISTANCE` = DISTANCE, `HORIZONTAL` = HORIZONTAL, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}