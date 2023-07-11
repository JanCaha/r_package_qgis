##' QGIS Algorithm provided by SAGA Next Gen Annual course of daily insolation (sagang:annualcourseofdailyinsolation). ---------------- Arguments ----------------  SOLARRAD: Solar Radiation 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer START: Start (ka) 	Default value:	-200 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression STOP: Stop (ka) 	Default value:	2 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression STEP: Step (ka) 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression LAT: Latitude (Degree) 	Default value:	53 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Annual course of daily insolation
##'
##' @param SOLARRAD `vectorDestination` - Solar Radiation. Path for new vector layer.
##' @param START `number` - Start (ka). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param STOP `number` - Stop (ka). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param STEP `number` - Step (ka). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param LAT `number` - Latitude (Degree). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * SOLARRAD - outputVector - Solar Radiation
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_annualcourseofdailyinsolation <- function(SOLARRAD = qgisprocess:::qgis_default_value(), START = qgisprocess:::qgis_default_value(), STOP = qgisprocess:::qgis_default_value(), STEP = qgisprocess:::qgis_default_value(), LAT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:annualcourseofdailyinsolation")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:annualcourseofdailyinsolation", `SOLARRAD` = SOLARRAD, `START` = START, `STOP` = STOP, `STEP` = STEP, `LAT` = LAT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:annualcourseofdailyinsolation", `SOLARRAD` = SOLARRAD, `START` = START, `STOP` = STOP, `STEP` = STEP, `LAT` = LAT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "SOLARRAD")
  }
}