##' QGIS Algorithm provided by SAGA Gaussian filter (saga:gaussianfilter)
##'
##' @title QGIS algorithm Gaussian filter
##'
##' @param INPUT `raster` - Grid. Path to a raster layer.
##' @param SIGMA `number` - Standard Deviation. A numeric value.
##' @param MODE `enum`  of `("[0] Square", "[1] Circle")` - Search Mode. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param RADIUS `number` - Search Radius. A numeric value.
##' @param RESULT `rasterDestination` - Filtered Grid. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * RESULT - outputRaster - Filtered Grid
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_gaussianfilter <- function(INPUT = qgisprocess::qgis_default_value(), SIGMA = qgisprocess::qgis_default_value(), MODE = qgisprocess::qgis_default_value(), RADIUS = qgisprocess::qgis_default_value(), RESULT = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:gaussianfilter")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:gaussianfilter", `INPUT` = INPUT, `SIGMA` = SIGMA, `MODE` = MODE, `RADIUS` = RADIUS, `RESULT` = RESULT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:gaussianfilter", `INPUT` = INPUT, `SIGMA` = SIGMA, `MODE` = MODE, `RADIUS` = RADIUS, `RESULT` = RESULT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "RESULT")
  }
}