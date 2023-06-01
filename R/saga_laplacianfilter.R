##' QGIS Algorithm provided by SAGA Laplacian filter (saga:laplacianfilter)
##'
##' @title QGIS algorithm Laplacian filter
##'
##' @param INPUT `raster` - Grid. Path to a raster layer.
##' @param METHOD `enum`  of `("[0] standard kernel 1", "[1] standard kernel 2", "[2] Standard kernel 3", "[3] user defined kernel")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param SIGMA `number` - Standard Deviation (Percent of Radius). A numeric value.
##' @param RADIUS `number` - Radius. A numeric value.
##' @param MODE `enum`  of `("[0] square", "[1] circle")` - Search Mode. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
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
##' @importFrom qgisprocess qgis_run_algorithm

saga_laplacianfilter <- function(INPUT = qgisprocess:::qgis_default_value(), METHOD = qgisprocess:::qgis_default_value(), SIGMA = qgisprocess:::qgis_default_value(), RADIUS = qgisprocess:::qgis_default_value(), MODE = qgisprocess:::qgis_default_value(), RESULT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:laplacianfilter")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:laplacianfilter", `INPUT` = INPUT, `METHOD` = METHOD, `SIGMA` = SIGMA, `RADIUS` = RADIUS, `MODE` = MODE, `RESULT` = RESULT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:laplacianfilter", `INPUT` = INPUT, `METHOD` = METHOD, `SIGMA` = SIGMA, `RADIUS` = RADIUS, `MODE` = MODE, `RESULT` = RESULT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "RESULT")
  }
}