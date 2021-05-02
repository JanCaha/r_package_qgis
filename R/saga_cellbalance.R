##' QGIS Algorithm provided by SAGA Cell balance (saga:cellbalance)
##'
##' @title QGIS algorithm Cell balance
##'
##' @param DEM `raster` - Elevation. Path to a raster layer.
##' @param WEIGHTS `raster` - Parameter. Path to a raster layer.
##' @param WEIGHTS_DEFAULT `number` - Default Weight. A numeric value.
##' @param METHOD `enum`  of `("[0] Deterministic 8", "[1] Multiple Flow Direction")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param BALANCE `rasterDestination` - Cell Balance. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * BALANCE - outputRaster - Cell Balance
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_cellbalance <- function(DEM = qgisprocess::qgis_default_value(), WEIGHTS = qgisprocess::qgis_default_value(), WEIGHTS_DEFAULT = qgisprocess::qgis_default_value(), METHOD = qgisprocess::qgis_default_value(), BALANCE = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("saga:cellbalance")
  output <- qgisprocess::qgis_run_algorithm("saga:cellbalance",`DEM` = DEM, `WEIGHTS` = WEIGHTS, `WEIGHTS_DEFAULT` = WEIGHTS_DEFAULT, `METHOD` = METHOD, `BALANCE` = BALANCE,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "BALANCE")
  }
}