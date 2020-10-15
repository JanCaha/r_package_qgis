##' QGIS Algorithm provided by SAGA Raster product (saga:rasterproduct)
##'
##' @title QGIS algorithm Raster product
##'
##' @param GRIDS `multilayer` - Grids. .
##' @param RESULT `rasterDestination` - Product. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * RESULT - outputRaster - Product
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_rasterproduct <- function(GRIDS = qgisprocess::qgis_default_value(), RESULT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("saga:rasterproduct",`GRIDS` = GRIDS, `RESULT` = RESULT,...)
  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "RESULT")
}
}