##' QGIS Algorithm provided by SAGA Next Gen Evapotranspiration (grid) (sagang:evapotranspirationgrid). ---------------- Arguments ----------------  T: Mean Temperature (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer T_DEFAULT: Default 	Default value:	10 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression T_MIN: Minimum Temperature (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer T_MIN_DEFAULT: Default 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression T_MAX: Maximum Temperature (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer T_MAX_DEFAULT: Default 	Default value:	20 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression RH: Relative Humidity (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer RH_DEFAULT: Default 	Default value:	50 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression SR: Solar Radiation (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer SR_DEFAULT: Default 	Default value:	2 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression WS: Wind Speed (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer WS_DEFAULT: Default 	Default value:	5 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression P: Air Pressure (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer P_DEFAULT: Default 	Default value:	101.3 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression ET: Potential Evapotranspiration 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer METHOD: Method 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) Turc 		- 1: (1) Hargreave 		- 2: (2) Penman (simplified) 		- 3: (3) Penman-Monteith 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' LAT: Latitude (Degree) 	Default value:	53 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression TIME: Time 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) day 		- 1: (1) month 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' MONTH: Month 	Default value:	2 	Argument type:	enum 	Available values: 		- 0: (0) January 		- 1: (1) February 		- 2: (2) March 		- 3: (3) April 		- 4: (4) May 		- 5: (5) June 		- 6: (6) July 		- 7: (7) August 		- 8: (8) September 		- 9: (9) October 		- 10: (10) November 		- 11: (11) December 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' DAY: Day of Month 	Default value:	24 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Evapotranspiration (grid)
##'
##' @param T `raster` - Mean Temperature. Path to a raster layer.
##' @param T_DEFAULT `number` - Default. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param T_MIN `raster` - Minimum Temperature. Path to a raster layer.
##' @param T_MIN_DEFAULT `number` - Default. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param T_MAX `raster` - Maximum Temperature. Path to a raster layer.
##' @param T_MAX_DEFAULT `number` - Default. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param RH `raster` - Relative Humidity. Path to a raster layer.
##' @param RH_DEFAULT `number` - Default. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param SR `raster` - Solar Radiation. Path to a raster layer.
##' @param SR_DEFAULT `number` - Default. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param WS `raster` - Wind Speed. Path to a raster layer.
##' @param WS_DEFAULT `number` - Default. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param P `raster` - Air Pressure. Path to a raster layer.
##' @param P_DEFAULT `number` - Default. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ET `rasterDestination` - Potential Evapotranspiration. Path for new raster layer.
##' @param METHOD `enum`  of `("(0) Turc", "(1) Hargreave", "(2) Penman (simplified)", "(3) Penman-Monteith")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param LAT `number` - Latitude (Degree). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param TIME `enum`  of `("(0) day", "(1) month")` - Time. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param MONTH `enum`  of `("(0) January", "(1) February", "(2) March", "(3) April", "(4) May", "(5) June", "(6) July", "(7) August", "(8) September", "(9) October", "(10) November", "(11) December")` - Month. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param DAY `number` - Day of Month. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * ET - outputRaster - Potential Evapotranspiration
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_evapotranspirationgrid <- function(T = qgisprocess:::qgis_default_value(), T_DEFAULT = qgisprocess:::qgis_default_value(), T_MIN = qgisprocess:::qgis_default_value(), T_MIN_DEFAULT = qgisprocess:::qgis_default_value(), T_MAX = qgisprocess:::qgis_default_value(), T_MAX_DEFAULT = qgisprocess:::qgis_default_value(), RH = qgisprocess:::qgis_default_value(), RH_DEFAULT = qgisprocess:::qgis_default_value(), SR = qgisprocess:::qgis_default_value(), SR_DEFAULT = qgisprocess:::qgis_default_value(), WS = qgisprocess:::qgis_default_value(), WS_DEFAULT = qgisprocess:::qgis_default_value(), P = qgisprocess:::qgis_default_value(), P_DEFAULT = qgisprocess:::qgis_default_value(), ET = qgisprocess:::qgis_default_value(), METHOD = qgisprocess:::qgis_default_value(), LAT = qgisprocess:::qgis_default_value(), TIME = qgisprocess:::qgis_default_value(), MONTH = qgisprocess:::qgis_default_value(), DAY = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:evapotranspirationgrid")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:evapotranspirationgrid", `T` = T, `T_DEFAULT` = T_DEFAULT, `T_MIN` = T_MIN, `T_MIN_DEFAULT` = T_MIN_DEFAULT, `T_MAX` = T_MAX, `T_MAX_DEFAULT` = T_MAX_DEFAULT, `RH` = RH, `RH_DEFAULT` = RH_DEFAULT, `SR` = SR, `SR_DEFAULT` = SR_DEFAULT, `WS` = WS, `WS_DEFAULT` = WS_DEFAULT, `P` = P, `P_DEFAULT` = P_DEFAULT, `ET` = ET, `METHOD` = METHOD, `LAT` = LAT, `TIME` = TIME, `MONTH` = MONTH, `DAY` = DAY,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:evapotranspirationgrid", `T` = T, `T_DEFAULT` = T_DEFAULT, `T_MIN` = T_MIN, `T_MIN_DEFAULT` = T_MIN_DEFAULT, `T_MAX` = T_MAX, `T_MAX_DEFAULT` = T_MAX_DEFAULT, `RH` = RH, `RH_DEFAULT` = RH_DEFAULT, `SR` = SR, `SR_DEFAULT` = SR_DEFAULT, `WS` = WS, `WS_DEFAULT` = WS_DEFAULT, `P` = P, `P_DEFAULT` = P_DEFAULT, `ET` = ET, `METHOD` = METHOD, `LAT` = LAT, `TIME` = TIME, `MONTH` = MONTH, `DAY` = DAY,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "ET")
  }
}