##' QGIS Algorithm provided by SAGA Next Gen Snow cover (sagang:snowcover). ---------------- Arguments ----------------  T: Mean Temperature 	Argument type:	multilayer P: Precipitation 	Argument type:	multilayer DAYS: Snow Cover Days 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer MEAN: Average 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer MAXIMUM: Maximum 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer QUANTILE: Quantile 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer QUANT_VAL: Value 	Default value:	50 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression TIME: Time 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) Year 		- 1: (1) January - March 		- 2: (2) April - June 		- 3: (3) July - September 		- 4: (4) October - December 		- 5: (5) Single Month 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' MONTH: Month 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) January 		- 1: (1) February 		- 2: (2) March 		- 3: (3) April 		- 4: (4) May 		- 5: (5) June 		- 6: (6) July 		- 7: (7) August 		- 8: (8) September 		- 9: (9) October 		- 10: (10) November 		- 11: (11) December 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3'
##'
##' @title QGIS algorithm - Snow cover
##'
##' @param T `multilayer` - Mean Temperature. .
##' @param P `multilayer` - Precipitation. .
##' @param DAYS `rasterDestination` - Snow Cover Days. Path for new raster layer.
##' @param MEAN `rasterDestination` - Average. Path for new raster layer.
##' @param MAXIMUM `rasterDestination` - Maximum. Path for new raster layer.
##' @param QUANTILE `rasterDestination` - Quantile. Path for new raster layer.
##' @param QUANT_VAL `number` - Value. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param TIME `enum`  of `("(0) Year", "(1) January - March", "(2) April - June", "(3) July - September", "(4) October - December", "(5) Single Month")` - Time. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param MONTH `enum`  of `("(0) January", "(1) February", "(2) March", "(3) April", "(4) May", "(5) June", "(6) July", "(7) August", "(8) September", "(9) October", "(10) November", "(11) December")` - Month. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * DAYS - outputRaster - Snow Cover Days
##' * MAXIMUM - outputRaster - Maximum
##' * MEAN - outputRaster - Average
##' * QUANTILE - outputRaster - Quantile
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_snowcover <- function(T = qgisprocess:::qgis_default_value(), P = qgisprocess:::qgis_default_value(), DAYS = qgisprocess:::qgis_default_value(), MEAN = qgisprocess:::qgis_default_value(), MAXIMUM = qgisprocess:::qgis_default_value(), QUANTILE = qgisprocess:::qgis_default_value(), QUANT_VAL = qgisprocess:::qgis_default_value(), TIME = qgisprocess:::qgis_default_value(), MONTH = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:snowcover")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:snowcover", `T` = T, `P` = P, `DAYS` = DAYS, `MEAN` = MEAN, `MAXIMUM` = MAXIMUM, `QUANTILE` = QUANTILE, `QUANT_VAL` = QUANT_VAL, `TIME` = TIME, `MONTH` = MONTH,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:snowcover", `T` = T, `P` = P, `DAYS` = DAYS, `MEAN` = MEAN, `MAXIMUM` = MAXIMUM, `QUANTILE` = QUANTILE, `QUANT_VAL` = QUANT_VAL, `TIME` = TIME, `MONTH` = MONTH,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "DAYS")
  }
}