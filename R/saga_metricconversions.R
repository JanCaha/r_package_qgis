##' QGIS Algorithm provided by SAGA Metric conversions (saga:metricconversions)
##'
##' @title QGIS algorithm Metric conversions
##'
##' @param GRID `raster` - Grid. Path to a raster layer.
##' @param CONVERSION `enum`  of `("[0] radians to degree", "[1] degree to radians", "[2] Celsius to Fahrenheit", "[3] Fahrenheit to Celsius")` - Conversion. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param CONV `rasterDestination` - Converted Grid. Path for new raster layer.
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

saga_metricconversions <- function(GRID = qgisprocess:::qgis_default_value(), CONVERSION = qgisprocess:::qgis_default_value(), CONV = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:metricconversions")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:metricconversions", `GRID` = GRID, `CONVERSION` = CONVERSION, `CONV` = CONV,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:metricconversions", `GRID` = GRID, `CONVERSION` = CONVERSION, `CONV` = CONV,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "CONV")
  }
}