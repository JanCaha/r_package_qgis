##' QGIS Algorithm provided by SAGA Majority filter (saga:majorityfilter)
##'
##' @title QGIS algorithm Majority filter
##'
##' @param INPUT `raster` - Grid. Path to a raster layer.
##' @param MODE `enum`  of `("[0] Square", "[1] Circle")` - Search Mode. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param RADIUS `number` - Radius. A numeric value.
##' @param THRESHOLD `number` - Threshold (Percent). A numeric value.
##' @param RESULT `rasterDestination` - Filtered Grid. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * RESULT - outputRaster - Filtered Grid
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_majorityfilter <- function(INPUT = qgisprocess::qgis_default_value(), MODE = qgisprocess::qgis_default_value(), RADIUS = qgisprocess::qgis_default_value(), THRESHOLD = qgisprocess::qgis_default_value(), RESULT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("saga:majorityfilter")

  output <- qgisprocess::qgis_run_algorithm("saga:majorityfilter", `INPUT` = INPUT, `MODE` = MODE, `RADIUS` = RADIUS, `THRESHOLD` = THRESHOLD, `RESULT` = RESULT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "RESULT")
  }
}