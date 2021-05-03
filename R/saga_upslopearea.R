##' QGIS Algorithm provided by SAGA Upslope area (saga:upslopearea)
##'
##' @title QGIS algorithm Upslope area
##'
##' @param TARGET `raster` - Target Area. Path to a raster layer.
##' @param TARGET_PT_X `number` - Target X coordinate. A numeric value.
##' @param TARGET_PT_Y `number` - Target Y coordinate. A numeric value.
##' @param ELEVATION `raster` - Elevation. Path to a raster layer.
##' @param SINKROUTE `raster` - Sink Routes. Path to a raster layer.
##' @param METHOD `enum`  of `("[0] Deterministic 8", "[1] Deterministic Infinity", "[2] Multiple Flow Direction")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param CONVERGE `number` - Convergence. A numeric value.
##' @param AREA `rasterDestination` - Upslope Area. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * AREA - outputRaster - Upslope Area
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_upslopearea <- function(TARGET = qgisprocess::qgis_default_value(), TARGET_PT_X = qgisprocess::qgis_default_value(), TARGET_PT_Y = qgisprocess::qgis_default_value(), ELEVATION = qgisprocess::qgis_default_value(), SINKROUTE = qgisprocess::qgis_default_value(), METHOD = qgisprocess::qgis_default_value(), CONVERGE = qgisprocess::qgis_default_value(), AREA = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_QGIS_versions()
  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("saga:upslopearea")
  output <- qgisprocess::qgis_run_algorithm("saga:upslopearea",`TARGET` = TARGET, `TARGET_PT_X` = TARGET_PT_X, `TARGET_PT_Y` = TARGET_PT_Y, `ELEVATION` = ELEVATION, `SINKROUTE` = SINKROUTE, `METHOD` = METHOD, `CONVERGE` = CONVERGE, `AREA` = AREA,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "AREA")
  }
}