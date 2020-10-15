##' QGIS Algorithm provided by SAGA Split RGB bands (saga:splitrgbbands)
##'
##' @title QGIS algorithm Split RGB bands
##'
##' @param INPUT `raster` - Input layer. Path to a raster layer.
##' @param R `rasterDestination` - Output R band layer. Path for new raster layer.
##' @param G `rasterDestination` - Output G band layer. Path for new raster layer.
##' @param B `rasterDestination` - Output B band layer. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * R - outputRaster - Output R band layer
##' * G - outputRaster - Output G band layer
##' * B - outputRaster - Output B band layer
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_splitrgbbands <- function(INPUT = qgisprocess::qgis_default_value(), R = qgisprocess::qgis_default_value(), G = qgisprocess::qgis_default_value(), B = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("saga:splitrgbbands",`INPUT` = INPUT, `R` = R, `G` = G, `B` = B,...)
  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "R")
}
}