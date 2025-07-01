##' QGIS Algorithm provided by QGIS (native c++) Fill gaps (native:fixgeometrygap). Fills gaps detected with the "Small gaps" algorithm from the "Check geometry" section. This algorithm fills the gaps based on a gap and neighbors layer from the "Small gaps" algorithm in the "Check geometry" section.  3 different fixing methods are available, which will give different results.
##'
##' @title QGIS algorithm - Fill gaps
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param NEIGHBORS `source` - Neighbors layer. Path to a vector layer.
##' @param GAPS `source` - Gaps layer. Path to a vector layer.
##' @param METHOD `enum`  of `("Add to longest shared edge", "Create new feature", "Add to largest neighbouring area")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param UNIQUE_ID `field` - Field of original feature unique identifier. The name of an existing field. ; delimited list of existing field names.
##' @param ERROR_ID_IDX `field` - Field of error id. The name of an existing field. ; delimited list of existing field names.
##' @param OUTPUT `sink` - Gaps-filled layer. Path for new vector layer.
##' @param REPORT `sink` - Report layer from fixing gaps. Path for new vector layer.
##' @param TOLERANCE `number` - Tolerance. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Gaps-filled layer
##' * REPORT - outputVector - Report layer from fixing gaps
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_fixgeometrygap <- function(INPUT = qgisprocess:::qgis_default_value(), NEIGHBORS = qgisprocess:::qgis_default_value(), GAPS = qgisprocess:::qgis_default_value(), METHOD = qgisprocess:::qgis_default_value(), UNIQUE_ID = qgisprocess:::qgis_default_value(), ERROR_ID_IDX = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(), REPORT = qgisprocess:::qgis_default_value(), TOLERANCE = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:fixgeometrygap")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:fixgeometrygap", `INPUT` = INPUT, `NEIGHBORS` = NEIGHBORS, `GAPS` = GAPS, `METHOD` = METHOD, `UNIQUE_ID` = UNIQUE_ID, `ERROR_ID_IDX` = ERROR_ID_IDX, `OUTPUT` = OUTPUT, `REPORT` = REPORT, `TOLERANCE` = TOLERANCE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:fixgeometrygap", `INPUT` = INPUT, `NEIGHBORS` = NEIGHBORS, `GAPS` = GAPS, `METHOD` = METHOD, `UNIQUE_ID` = UNIQUE_ID, `ERROR_ID_IDX` = ERROR_ID_IDX, `OUTPUT` = OUTPUT, `REPORT` = REPORT, `TOLERANCE` = TOLERANCE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}