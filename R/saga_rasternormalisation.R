##' QGIS Algorithm provided by SAGA Raster normalisation (saga:rasternormalisation)
##'
##' @title QGIS algorithm Raster normalisation
##'
##' @param INPUT `raster` - Grid. Path to a raster layer.
##' @param RANGE_MIN `number` - Target Range (min). A numeric value.
##' @param RANGE_MAX `number` - Target Range (max). A numeric value.
##' @param OUTPUT `rasterDestination` - Normalised Grid. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputRaster - Normalised Grid
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_rasternormalisation <- function(INPUT = qgisprocess::qgis_default_value(), RANGE_MIN = qgisprocess::qgis_default_value(), RANGE_MAX = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("saga:rasternormalisation",`INPUT` = INPUT, `RANGE_MIN` = RANGE_MIN, `RANGE_MAX` = RANGE_MAX, `OUTPUT` = OUTPUT,...)
  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
}
}