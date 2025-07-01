##' QGIS Algorithm provided by QGIS (native c++) Convert to strictly multipart (native:fixgeometrymultipart). Converts features detected with the "Strictly multipart" algorithm from the "Check geometry" section to singlepart. This algorithm converts multipart geometries that consists of only one geometry into singlepart geometries, based on an error layer from the "Strict multipart" algorithm in the "Check geometry" section.  This algorithm does not change the layer geometry type, which will remain multipart.
##'
##' @title QGIS algorithm - Convert to strictly multipart
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param ERRORS `source` - Error layer. Path to a vector layer.
##' @param UNIQUE_ID `field` - Field of original feature unique identifier. The name of an existing field. ; delimited list of existing field names.
##' @param OUTPUT `sink` - Strictly-multipart layer. Path for new vector layer.
##' @param REPORT `sink` - Report layer from fixing multiparts. Path for new vector layer.
##' @param TOLERANCE `number` - Tolerance. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Strictly-multipart layer
##' * REPORT - outputVector - Report layer from fixing multiparts
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_fixgeometrymultipart <- function(INPUT = qgisprocess:::qgis_default_value(), ERRORS = qgisprocess:::qgis_default_value(), UNIQUE_ID = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(), REPORT = qgisprocess:::qgis_default_value(), TOLERANCE = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:fixgeometrymultipart")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:fixgeometrymultipart", `INPUT` = INPUT, `ERRORS` = ERRORS, `UNIQUE_ID` = UNIQUE_ID, `OUTPUT` = OUTPUT, `REPORT` = REPORT, `TOLERANCE` = TOLERANCE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:fixgeometrymultipart", `INPUT` = INPUT, `ERRORS` = ERRORS, `UNIQUE_ID` = UNIQUE_ID, `OUTPUT` = OUTPUT, `REPORT` = REPORT, `TOLERANCE` = TOLERANCE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}