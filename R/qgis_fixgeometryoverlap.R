##' QGIS Algorithm provided by QGIS (native c++) Delete overlaps (native:fixgeometryoverlap). Deletes overlaps detected with the "Overlaps" algorithm from the "Check geometry" section. This algorithm deletes overlap sections based on an error layer from the "Overlap" algorithm in the "Check geometry" section.
##'
##' @title QGIS algorithm - Delete overlaps
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param ERRORS `source` - Error layer. Path to a vector layer.
##' @param UNIQUE_ID `field` - Field of original feature unique identifier. The name of an existing field. ; delimited list of existing field names.
##' @param OVERLAP_FEATURE_UNIQUE_IDX `field` - Field of overlap feature unique identifier. The name of an existing field. ; delimited list of existing field names.
##' @param ERROR_VALUE_ID `field` - Field of error value. The name of an existing field. ; delimited list of existing field names.
##' @param OUTPUT `sink` - No-overlap layer. Path for new vector layer.
##' @param REPORT `sink` - Report layer from fixing overlaps. Path for new vector layer.
##' @param TOLERANCE `number` - Tolerance. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - No-overlap layer
##' * REPORT - outputVector - Report layer from fixing overlaps
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_fixgeometryoverlap <- function(INPUT = qgisprocess:::qgis_default_value(), ERRORS = qgisprocess:::qgis_default_value(), UNIQUE_ID = qgisprocess:::qgis_default_value(), OVERLAP_FEATURE_UNIQUE_IDX = qgisprocess:::qgis_default_value(), ERROR_VALUE_ID = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(), REPORT = qgisprocess:::qgis_default_value(), TOLERANCE = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:fixgeometryoverlap")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:fixgeometryoverlap", `INPUT` = INPUT, `ERRORS` = ERRORS, `UNIQUE_ID` = UNIQUE_ID, `OVERLAP_FEATURE_UNIQUE_IDX` = OVERLAP_FEATURE_UNIQUE_IDX, `ERROR_VALUE_ID` = ERROR_VALUE_ID, `OUTPUT` = OUTPUT, `REPORT` = REPORT, `TOLERANCE` = TOLERANCE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:fixgeometryoverlap", `INPUT` = INPUT, `ERRORS` = ERRORS, `UNIQUE_ID` = UNIQUE_ID, `OVERLAP_FEATURE_UNIQUE_IDX` = OVERLAP_FEATURE_UNIQUE_IDX, `ERROR_VALUE_ID` = ERROR_VALUE_ID, `OUTPUT` = OUTPUT, `REPORT` = REPORT, `TOLERANCE` = TOLERANCE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}