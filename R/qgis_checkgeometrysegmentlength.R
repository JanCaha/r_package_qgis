##' QGIS Algorithm provided by QGIS (native c++) Small segments (native:checkgeometrysegmentlength). Detects segments, in lines or polygons, shorter than a given length. This algorithm checks the minimum segment length of line or polygon geometries. Segments shorter than the minimum length are errors.
##'
##' @title QGIS algorithm - Small segments
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param UNIQUE_ID `field` - Unique feature identifier. The name of an existing field. ; delimited list of existing field names.
##' @param ERRORS `sink` - Short segments errors. Path for new vector layer.
##' @param OUTPUT `sink` - Short segments features. Path for new vector layer.
##' @param MIN_SEGMENT_LENGTH `number` - minimum segment length. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param TOLERANCE `number` - Tolerance. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * ERRORS - outputVector - Short segments errors
##' * OUTPUT - outputVector - Short segments features
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_checkgeometrysegmentlength <- function(INPUT = qgisprocess:::qgis_default_value(), UNIQUE_ID = qgisprocess:::qgis_default_value(), ERRORS = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(), MIN_SEGMENT_LENGTH = qgisprocess:::qgis_default_value(), TOLERANCE = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:checkgeometrysegmentlength")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:checkgeometrysegmentlength", `INPUT` = INPUT, `UNIQUE_ID` = UNIQUE_ID, `ERRORS` = ERRORS, `OUTPUT` = OUTPUT, `MIN_SEGMENT_LENGTH` = MIN_SEGMENT_LENGTH, `TOLERANCE` = TOLERANCE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:checkgeometrysegmentlength", `INPUT` = INPUT, `UNIQUE_ID` = UNIQUE_ID, `ERRORS` = ERRORS, `OUTPUT` = OUTPUT, `MIN_SEGMENT_LENGTH` = MIN_SEGMENT_LENGTH, `TOLERANCE` = TOLERANCE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "ERRORS")
  }
}