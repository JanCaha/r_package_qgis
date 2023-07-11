##' QGIS Algorithm provided by SAGA Next Gen Line simplification (sagang:linesimplification). ---------------- Arguments ----------------  LINES: Lines 	Argument type:	source 	Acceptable values: 		- Path to a vector layer OUTPUT: Simplified Lines 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer TOLERANCE: Tolerance 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Line simplification
##'
##' @param LINES `source` - Lines. Path to a vector layer.
##' @param OUTPUT `vectorDestination` - Simplified Lines. Path for new vector layer.
##' @param TOLERANCE `number` - Tolerance. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Simplified Lines
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_linesimplification <- function(LINES = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(), TOLERANCE = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:linesimplification")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:linesimplification", `LINES` = LINES, `OUTPUT` = OUTPUT, `TOLERANCE` = TOLERANCE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:linesimplification", `LINES` = LINES, `OUTPUT` = OUTPUT, `TOLERANCE` = TOLERANCE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}