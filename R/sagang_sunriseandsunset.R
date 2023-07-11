##' QGIS Algorithm provided by SAGA Next Gen Sunrise and sunset (sagang:sunriseandsunset). ---------------- Arguments ----------------  TARGET: Target System 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer SUNRISE: Sunrise 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer SUNSET: Sunset 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer LENGTH: Day Length 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer DAY: Day of Month 	Default value:	2021-03-24 	Argument type:	string 	Acceptable values: 		- String value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression TIME: Time 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) local 		- 1: (1) world 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3'
##'
##' @title QGIS algorithm - Sunrise and sunset
##'
##' @param TARGET `raster` - Target System. Path to a raster layer.
##' @param SUNRISE `rasterDestination` - Sunrise. Path for new raster layer.
##' @param SUNSET `rasterDestination` - Sunset. Path for new raster layer.
##' @param LENGTH `rasterDestination` - Day Length. Path for new raster layer.
##' @param DAY `string` - Day of Month. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param TIME `enum`  of `("(0) local", "(1) world")` - Time. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * LENGTH - outputRaster - Day Length
##' * SUNRISE - outputRaster - Sunrise
##' * SUNSET - outputRaster - Sunset
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_sunriseandsunset <- function(TARGET = qgisprocess:::qgis_default_value(), SUNRISE = qgisprocess:::qgis_default_value(), SUNSET = qgisprocess:::qgis_default_value(), LENGTH = qgisprocess:::qgis_default_value(), DAY = qgisprocess:::qgis_default_value(), TIME = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:sunriseandsunset")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:sunriseandsunset", `TARGET` = TARGET, `SUNRISE` = SUNRISE, `SUNSET` = SUNSET, `LENGTH` = LENGTH, `DAY` = DAY, `TIME` = TIME,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:sunriseandsunset", `TARGET` = TARGET, `SUNRISE` = SUNRISE, `SUNSET` = SUNSET, `LENGTH` = LENGTH, `DAY` = DAY, `TIME` = TIME,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "LENGTH")
  }
}