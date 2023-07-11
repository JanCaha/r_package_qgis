##' QGIS Algorithm provided by SAGA Next Gen Temperature lapse rates (sagang:temperaturelapserates). ---------------- Arguments ----------------  TEMP: Atmospheric Lapse Rates 	Argument type:	multilayer TGROUND: Surface Temperature 	Argument type:	multilayer LAPSE: Temperature Lapse Rate at Extreme 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer TEXTREME: Daily Extreme Temperature 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer TIME: Hour of Daily Extreme Temperature 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer EXTREME: Temperature extreme 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) minimum 		- 1: (1) maximum 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3'
##'
##' @title QGIS algorithm - Temperature lapse rates
##'
##' @param TEMP `multilayer` - Atmospheric Lapse Rates. .
##' @param TGROUND `multilayer` - Surface Temperature. .
##' @param LAPSE `rasterDestination` - Temperature Lapse Rate at Extreme. Path for new raster layer.
##' @param TEXTREME `rasterDestination` - Daily Extreme Temperature. Path for new raster layer.
##' @param TIME `rasterDestination` - Hour of Daily Extreme Temperature. Path for new raster layer.
##' @param EXTREME `enum`  of `("(0) minimum", "(1) maximum")` - Temperature extreme. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * LAPSE - outputRaster - Temperature Lapse Rate at Extreme
##' * TEXTREME - outputRaster - Daily Extreme Temperature
##' * TIME - outputRaster - Hour of Daily Extreme Temperature
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_temperaturelapserates <- function(TEMP = qgisprocess:::qgis_default_value(), TGROUND = qgisprocess:::qgis_default_value(), LAPSE = qgisprocess:::qgis_default_value(), TEXTREME = qgisprocess:::qgis_default_value(), TIME = qgisprocess:::qgis_default_value(), EXTREME = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:temperaturelapserates")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:temperaturelapserates", `TEMP` = TEMP, `TGROUND` = TGROUND, `LAPSE` = LAPSE, `TEXTREME` = TEXTREME, `TIME` = TIME, `EXTREME` = EXTREME,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:temperaturelapserates", `TEMP` = TEMP, `TGROUND` = TGROUND, `LAPSE` = LAPSE, `TEXTREME` = TEXTREME, `TIME` = TIME, `EXTREME` = EXTREME,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "LAPSE")
  }
}