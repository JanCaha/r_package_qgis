##' QGIS Algorithm provided by SAGA Ordered weighted averaging (saga:orderedweightedaveraging)
##'
##' @title QGIS algorithm Ordered weighted averaging
##'
##' @param GRIDS `multilayer` - Input Grids. .
##' @param WEIGHTS `matrix` - Weights. A comma delimited list of values.
##' @param OUTPUT `rasterDestination` - Output Grid. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputRaster - Output Grid
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_orderedweightedaveraging <- function(GRIDS = qgisprocess::qgis_default_value(), WEIGHTS = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("saga:orderedweightedaveraging")
  output <- qgisprocess::qgis_run_algorithm("saga:orderedweightedaveraging",`GRIDS` = GRIDS, `WEIGHTS` = WEIGHTS, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}