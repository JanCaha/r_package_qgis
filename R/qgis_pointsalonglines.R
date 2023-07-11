##' QGIS Algorithm provided by QGIS (native c++) Points along geometry (native:pointsalonglines). Creates regularly spaced points along line features. This algorithm creates a points layer, with points distributed along the lines of an input vector layer. The distance between points (measured along the line) is defined as a parameter.  Start and end offset distances can be defined, so the first and last point will not fall exactly on the line's first and last nodes. These start and end offsets are defined as distances, measured along the line from the first and last nodes of the lines.
##'
##' @title QGIS algorithm - Points along geometry
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param DISTANCE `distance` - Distance. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param START_OFFSET `distance` - Start offset. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param END_OFFSET `distance` - End offset. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTPUT `sink` - Interpolated points. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Interpolated points
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_pointsalonglines <- function(INPUT = qgisprocess:::qgis_default_value(), DISTANCE = qgisprocess:::qgis_default_value(), START_OFFSET = qgisprocess:::qgis_default_value(), END_OFFSET = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:pointsalonglines")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:pointsalonglines", `INPUT` = INPUT, `DISTANCE` = DISTANCE, `START_OFFSET` = START_OFFSET, `END_OFFSET` = END_OFFSET, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:pointsalonglines", `INPUT` = INPUT, `DISTANCE` = DISTANCE, `START_OFFSET` = START_OFFSET, `END_OFFSET` = END_OFFSET, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}