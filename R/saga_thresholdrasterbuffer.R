##' QGIS Algorithm provided by SAGA Threshold raster buffer (saga:thresholdrasterbuffer)
##'
##' @title QGIS algorithm Threshold raster buffer
##'
##' @param FEATURES `raster` - Features Grid. Path to a raster layer.
##' @param VALUE `raster` - Value Grid. Path to a raster layer.
##' @param THRESHOLDGRID `raster` - Threshold Grid. Path to a raster layer.
##' @param THRESHOLD `number` - Threshold. A numeric value.
##' @param THRESHOLDTYPE `enum`  of `("[0] Absolute", "[1] Relative from cell value")` - Threshold Type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param BUFFER `rasterDestination` - Buffer Grid. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * BUFFER - outputRaster - Buffer Grid
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_thresholdrasterbuffer <- function(FEATURES = qgisprocess::qgis_default_value(), VALUE = qgisprocess::qgis_default_value(), THRESHOLDGRID = qgisprocess::qgis_default_value(), THRESHOLD = qgisprocess::qgis_default_value(), THRESHOLDTYPE = qgisprocess::qgis_default_value(), BUFFER = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("saga:thresholdrasterbuffer",`FEATURES` = FEATURES, `VALUE` = VALUE, `THRESHOLDGRID` = THRESHOLDGRID, `THRESHOLD` = THRESHOLD, `THRESHOLDTYPE` = THRESHOLDTYPE, `BUFFER` = BUFFER,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "BUFFER")
  }
}