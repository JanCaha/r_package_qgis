##' QGIS Algorithm provided by SAGA Next Gen Evapotranspiration (table) (sagang:evapotranspirationtable). ---------------- Arguments ----------------  TABLE: Data 	Argument type:	source 	Acceptable values: 		- Path to a vector layer RESULT: Evapotranspiration 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer T: Mean Temperature 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names T_MIN: Minimum Temperature 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names T_MAX: Maximum Temperature 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names RH: Relative Humidity 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names SR: Solar Radiation 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names WS: Wind Speed 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names P: Air Pressure 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names DATE: Date 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names ET: Evapotranspiration 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names LAT: Latitude 	Default value:	53 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression METHOD: Method 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) Turc 		- 1: (1) Hargreave 		- 2: (2) Penman (simplified) 		- 3: (3) Penman-Monteith 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3'
##'
##' @title QGIS algorithm - Evapotranspiration (table)
##'
##' @param TABLE `source` - Data. Path to a vector layer.
##' @param RESULT `vectorDestination` - Evapotranspiration. Path for new vector layer.
##' @param T `field` - Mean Temperature. The name of an existing field. ; delimited list of existing field names.
##' @param T_MIN `field` - Minimum Temperature. The name of an existing field. ; delimited list of existing field names.
##' @param T_MAX `field` - Maximum Temperature. The name of an existing field. ; delimited list of existing field names.
##' @param RH `field` - Relative Humidity. The name of an existing field. ; delimited list of existing field names.
##' @param SR `field` - Solar Radiation. The name of an existing field. ; delimited list of existing field names.
##' @param WS `field` - Wind Speed. The name of an existing field. ; delimited list of existing field names.
##' @param P `field` - Air Pressure. The name of an existing field. ; delimited list of existing field names.
##' @param DATE `field` - Date. The name of an existing field. ; delimited list of existing field names.
##' @param ET `field` - Evapotranspiration. The name of an existing field. ; delimited list of existing field names.
##' @param LAT `number` - Latitude. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param METHOD `enum`  of `("(0) Turc", "(1) Hargreave", "(2) Penman (simplified)", "(3) Penman-Monteith")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * RESULT - outputVector - Evapotranspiration
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_evapotranspirationtable <- function(TABLE = qgisprocess:::qgis_default_value(), RESULT = qgisprocess:::qgis_default_value(), T = qgisprocess:::qgis_default_value(), T_MIN = qgisprocess:::qgis_default_value(), T_MAX = qgisprocess:::qgis_default_value(), RH = qgisprocess:::qgis_default_value(), SR = qgisprocess:::qgis_default_value(), WS = qgisprocess:::qgis_default_value(), P = qgisprocess:::qgis_default_value(), DATE = qgisprocess:::qgis_default_value(), ET = qgisprocess:::qgis_default_value(), LAT = qgisprocess:::qgis_default_value(), METHOD = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:evapotranspirationtable")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:evapotranspirationtable", `TABLE` = TABLE, `RESULT` = RESULT, `T` = T, `T_MIN` = T_MIN, `T_MAX` = T_MAX, `RH` = RH, `SR` = SR, `WS` = WS, `P` = P, `DATE` = DATE, `ET` = ET, `LAT` = LAT, `METHOD` = METHOD,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:evapotranspirationtable", `TABLE` = TABLE, `RESULT` = RESULT, `T` = T, `T_MIN` = T_MIN, `T_MAX` = T_MAX, `RH` = RH, `SR` = SR, `WS` = WS, `P` = P, `DATE` = DATE, `ET` = ET, `LAT` = LAT, `METHOD` = METHOD,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "RESULT")
  }
}