##' QGIS Algorithm provided by SAGA Aspect-slope grid (saga:aspectslopegrid)
##'
##' @title QGIS algorithm Aspect-slope grid
##'
##' @param ASPECT `raster` - Aspect. Path to a raster layer.
##' @param SLOPE `raster` - Slope. Path to a raster layer.
##' @param ASPECT_SLOPE `rasterDestination` - Aspect-Slope. Path for new raster layer.
##' @param LUT `source` - Lookup Table. Path to a vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * ASPECT_SLOPE - outputRaster - Aspect
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_aspectslopegrid <- function(ASPECT = qgisprocess::qgis_default_value(), SLOPE = qgisprocess::qgis_default_value(), ASPECT_SLOPE = qgisprocess::qgis_default_value(), LUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("saga:aspectslopegrid",`ASPECT` = ASPECT, `SLOPE` = SLOPE, `ASPECT_SLOPE` = ASPECT_SLOPE, `LUT` = LUT,...)
  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "ASPECT_SLOPE")
}
}