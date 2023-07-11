##' QGIS Algorithm provided by SAGA Next Gen Monthly global by latitude (sagang:monthlyglobalbylatitude). ---------------- Arguments ----------------  SOLARRAD: Solar Radiation 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer ALBEDO: Albedo (optional) 	Argument type:	source 	Acceptable values: 		- Path to a vector layer FIELD: Field 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names YEAR: Year (ka) 	Default value:	2 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression DLAT: Latitude Increment (Degree) 	Default value:	5 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Monthly global by latitude
##'
##' @param SOLARRAD `vectorDestination` - Solar Radiation. Path for new vector layer.
##' @param ALBEDO `source` - Albedo. Path to a vector layer.
##' @param FIELD `field` - Field. The name of an existing field. ; delimited list of existing field names.
##' @param YEAR `number` - Year (ka). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param DLAT `number` - Latitude Increment (Degree). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
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

sagang_monthlyglobalbylatitude <- function(SOLARRAD = qgisprocess:::qgis_default_value(), ALBEDO = qgisprocess:::qgis_default_value(), FIELD = qgisprocess:::qgis_default_value(), YEAR = qgisprocess:::qgis_default_value(), DLAT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:monthlyglobalbylatitude")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:monthlyglobalbylatitude", `SOLARRAD` = SOLARRAD, `ALBEDO` = ALBEDO, `FIELD` = FIELD, `YEAR` = YEAR, `DLAT` = DLAT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:monthlyglobalbylatitude", `SOLARRAD` = SOLARRAD, `ALBEDO` = ALBEDO, `FIELD` = FIELD, `YEAR` = YEAR, `DLAT` = DLAT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "SOLARRAD")
  }
}