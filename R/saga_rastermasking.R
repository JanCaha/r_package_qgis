##' QGIS Algorithm provided by SAGA Raster masking (saga:rastermasking)
##'
##' @title QGIS algorithm Raster masking
##'
##' @param GRID `raster` - Grid. Path to a raster layer.
##' @param MASK `raster` - Mask. Path to a raster layer.
##' @param MASKED `rasterDestination` - Masked Grid. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * MASKED - outputRaster - Masked Grid
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_rastermasking <- function(GRID = qgisprocess::qgis_default_value(), MASK = qgisprocess::qgis_default_value(), MASKED = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("saga:rastermasking")
  output <- qgisprocess::qgis_run_algorithm("saga:rastermasking",`GRID` = GRID, `MASK` = MASK, `MASKED` = MASKED,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "MASKED")
  }
}