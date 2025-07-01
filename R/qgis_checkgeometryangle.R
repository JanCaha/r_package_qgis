##' QGIS Algorithm provided by QGIS (native c++) Small angles (native:checkgeometryangle). Detects angles smaller than a given angle. This algorithm checks the angles of line or polygon geometries. Angles below the minimum angle are errors.
##'
##' @title QGIS algorithm - Small angles
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param UNIQUE_ID `field` - Unique feature identifier. The name of an existing field. ; delimited list of existing field names.
##' @param MIN_ANGLE `number` - Minimum angle (in degrees). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ERRORS `sink` - Small angle errors. Path for new vector layer.
##' @param TOLERANCE `number` - Tolerance. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * ERRORS - outputVector - Small angle errors
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_checkgeometryangle <- function(INPUT = qgisprocess:::qgis_default_value(), UNIQUE_ID = qgisprocess:::qgis_default_value(), MIN_ANGLE = qgisprocess:::qgis_default_value(), ERRORS = qgisprocess:::qgis_default_value(), TOLERANCE = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:checkgeometryangle")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:checkgeometryangle", `INPUT` = INPUT, `UNIQUE_ID` = UNIQUE_ID, `MIN_ANGLE` = MIN_ANGLE, `ERRORS` = ERRORS, `TOLERANCE` = TOLERANCE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:checkgeometryangle", `INPUT` = INPUT, `UNIQUE_ID` = UNIQUE_ID, `MIN_ANGLE` = MIN_ANGLE, `ERRORS` = ERRORS, `TOLERANCE` = TOLERANCE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "ERRORS")
  }
}