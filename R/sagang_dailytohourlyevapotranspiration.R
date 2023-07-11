##' QGIS Algorithm provided by SAGA Next Gen Daily to hourly evapotranspiration (sagang:dailytohourlyevapotranspiration). ---------------- Arguments ----------------  DAYS: Daily Data 	Argument type:	source 	Acceptable values: 		- Path to a vector layer JD: Julian Day 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names ET: Evapotranspiration 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names P: Precipitation 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names HOURS: Hourly Data 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer LAT: Latitude 	Default value:	53 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Daily to hourly evapotranspiration
##'
##' @param DAYS `source` - Daily Data. Path to a vector layer.
##' @param JD `field` - Julian Day. The name of an existing field. ; delimited list of existing field names.
##' @param ET `field` - Evapotranspiration. The name of an existing field. ; delimited list of existing field names.
##' @param P `field` - Precipitation. The name of an existing field. ; delimited list of existing field names.
##' @param HOURS `vectorDestination` - Hourly Data. Path for new vector layer.
##' @param LAT `number` - Latitude. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * HOURS - outputVector - Hourly Data
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_dailytohourlyevapotranspiration <- function(DAYS = qgisprocess:::qgis_default_value(), JD = qgisprocess:::qgis_default_value(), ET = qgisprocess:::qgis_default_value(), P = qgisprocess:::qgis_default_value(), HOURS = qgisprocess:::qgis_default_value(), LAT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:dailytohourlyevapotranspiration")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:dailytohourlyevapotranspiration", `DAYS` = DAYS, `JD` = JD, `ET` = ET, `P` = P, `HOURS` = HOURS, `LAT` = LAT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:dailytohourlyevapotranspiration", `DAYS` = DAYS, `JD` = JD, `ET` = ET, `P` = P, `HOURS` = HOURS, `LAT` = LAT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "HOURS")
  }
}