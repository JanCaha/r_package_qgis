##' QGIS Algorithm provided by SAGA Close gaps (saga:closegaps)
##'
##' @title QGIS algorithm Close gaps
##'
##' @param INPUT `raster` - Grid. Path to a raster layer.
##' @param MASK `raster` - Mask. Path to a raster layer.
##' @param THRESHOLD `number` - Tension Threshold. A numeric value.
##' @param RESULT `rasterDestination` - Changed Grid. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * RESULT - outputRaster - Changed Grid
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_closegaps <- function(INPUT = qgisprocess::qgis_default_value(), MASK = qgisprocess::qgis_default_value(), THRESHOLD = qgisprocess::qgis_default_value(), RESULT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("saga:closegaps",`INPUT` = INPUT, `MASK` = MASK, `THRESHOLD` = THRESHOLD, `RESULT` = RESULT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "RESULT")
  }
}