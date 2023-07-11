##' QGIS Algorithm provided by SAGA Next Gen Metric conversions (sagang:metricconversions). ---------------- Arguments ----------------  GRID: Grid 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer CONV: Converted Grid 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer CONVERSION: Conversion 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) radians to degree 		- 1: (1) degree to radians 		- 2: (2) Celsius to Fahrenheit 		- 3: (3) Fahrenheit to Celsius 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3'
##'
##' @title QGIS algorithm - Metric conversions
##'
##' @param GRID `raster` - Grid. Path to a raster layer.
##' @param CONV `rasterDestination` - Converted Grid. Path for new raster layer.
##' @param CONVERSION `enum`  of `("(0) radians to degree", "(1) degree to radians", "(2) Celsius to Fahrenheit", "(3) Fahrenheit to Celsius")` - Conversion. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * CONV - outputRaster - Converted Grid
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_metricconversions <- function(GRID = qgisprocess:::qgis_default_value(), CONV = qgisprocess:::qgis_default_value(), CONVERSION = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:metricconversions")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:metricconversions", `GRID` = GRID, `CONV` = CONV, `CONVERSION` = CONVERSION,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:metricconversions", `GRID` = GRID, `CONV` = CONV, `CONVERSION` = CONVERSION,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "CONV")
  }
}