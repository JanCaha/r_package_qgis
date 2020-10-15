##' QGIS Algorithm provided by SAGA Binary erosion-reconstruction (saga:binaryerosionreconstruction)
##'
##' @title QGIS algorithm Binary erosion-reconstruction
##'
##' @param INPUT_GRID `raster` - Input Grid. Path to a raster layer.
##' @param OUTPUT_GRID `rasterDestination` - Output Grid. Path for new raster layer.
##' @param RADIUS `number` - Filter Size (Radius). A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT_GRID - outputRaster - Output Grid
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_binaryerosionreconstruction <- function(INPUT_GRID = qgisprocess::qgis_default_value(), OUTPUT_GRID = qgisprocess::qgis_default_value(), RADIUS = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("saga:binaryerosionreconstruction",`INPUT_GRID` = INPUT_GRID, `OUTPUT_GRID` = OUTPUT_GRID, `RADIUS` = RADIUS,...)
  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT_GRID")
}
}