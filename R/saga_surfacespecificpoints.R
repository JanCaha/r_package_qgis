##' QGIS Algorithm provided by SAGA Surface specific points (saga:surfacespecificpoints)
##'
##' @title QGIS algorithm Surface specific points
##'
##' @param ELEVATION `raster` - Elevation. Path to a raster layer.
##' @param METHOD `enum`  of `("[0] Mark Highest Neighbour", "[1] Opposite Neighbours", "[2] Flow Direction", "[3] Flow Direction (up and down)", "[4] Peucker & Douglas")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param THRESHOLD `number` - Threshold. A numeric value.
##' @param RESULT `rasterDestination` - Result. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * RESULT - outputRaster - Result
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_surfacespecificpoints <- function(ELEVATION = qgisprocess::qgis_default_value(), METHOD = qgisprocess::qgis_default_value(), THRESHOLD = qgisprocess::qgis_default_value(), RESULT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("saga:surfacespecificpoints",`ELEVATION` = ELEVATION, `METHOD` = METHOD, `THRESHOLD` = THRESHOLD, `RESULT` = RESULT,...)
  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "RESULT")
}
}