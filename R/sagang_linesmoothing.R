##' QGIS Algorithm provided by SAGA Next Gen Line smoothing (sagang:linesmoothing). ---------------- Arguments ----------------  LINES_IN: Lines 	Argument type:	source 	Acceptable values: 		- Path to a vector layer LINES_OUT: Smoothed Lines 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer METHOD: Method 	Default value:	2 	Argument type:	enum 	Available values: 		- 0: (0) basic SIA model 		- 1: (1) improved SIA model 		- 2: (2) Gaussian Filtering 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' SENSITIVITY: Sensitivity 	Default value:	3 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression ITERATIONS: Iterations 	Default value:	10 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression PRESERVATION: Preservation 	Default value:	10 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression SIGMA: Sigma 	Default value:	2 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Line smoothing
##'
##' @param LINES_IN `source` - Lines. Path to a vector layer.
##' @param LINES_OUT `vectorDestination` - Smoothed Lines. Path for new vector layer.
##' @param METHOD `enum`  of `("(0) basic SIA model", "(1) improved SIA model", "(2) Gaussian Filtering")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param SENSITIVITY `number` - Sensitivity. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ITERATIONS `number` - Iterations. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param PRESERVATION `number` - Preservation. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param SIGMA `number` - Sigma. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * LINES_OUT - outputVector - Smoothed Lines
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_linesmoothing <- function(LINES_IN = qgisprocess:::qgis_default_value(), LINES_OUT = qgisprocess:::qgis_default_value(), METHOD = qgisprocess:::qgis_default_value(), SENSITIVITY = qgisprocess:::qgis_default_value(), ITERATIONS = qgisprocess:::qgis_default_value(), PRESERVATION = qgisprocess:::qgis_default_value(), SIGMA = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:linesmoothing")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:linesmoothing", `LINES_IN` = LINES_IN, `LINES_OUT` = LINES_OUT, `METHOD` = METHOD, `SENSITIVITY` = SENSITIVITY, `ITERATIONS` = ITERATIONS, `PRESERVATION` = PRESERVATION, `SIGMA` = SIGMA,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:linesmoothing", `LINES_IN` = LINES_IN, `LINES_OUT` = LINES_OUT, `METHOD` = METHOD, `SENSITIVITY` = SENSITIVITY, `ITERATIONS` = ITERATIONS, `PRESERVATION` = PRESERVATION, `SIGMA` = SIGMA,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "LINES_OUT")
  }
}