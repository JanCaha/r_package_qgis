##' QGIS Algorithm provided by SAGA Next Gen Earth's orbital parameters (sagang:earthsorbitalparameters). ---------------- Arguments ----------------  ORBPAR: Earth's Orbital Parameters 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer START: Start (ka) 	Default value:	-200 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression STOP: Stop (ka) 	Default value:	2 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression STEP: Step (ka) 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Earth's orbital parameters
##'
##' @param ORBPAR `vectorDestination` - Earth's Orbital Parameters. Path for new vector layer.
##' @param START `number` - Start (ka). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param STOP `number` - Stop (ka). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param STEP `number` - Step (ka). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * ORBPAR - outputVector - Earth's Orbital Parameters
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_earthsorbitalparameters <- function(ORBPAR = qgisprocess:::qgis_default_value(), START = qgisprocess:::qgis_default_value(), STOP = qgisprocess:::qgis_default_value(), STEP = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:earthsorbitalparameters")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:earthsorbitalparameters", `ORBPAR` = ORBPAR, `START` = START, `STOP` = STOP, `STEP` = STEP,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:earthsorbitalparameters", `ORBPAR` = ORBPAR, `START` = START, `STOP` = STOP, `STEP` = STEP,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "ORBPAR")
  }
}