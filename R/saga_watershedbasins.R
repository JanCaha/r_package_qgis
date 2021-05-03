##' QGIS Algorithm provided by SAGA Watershed basins (saga:watershedbasins)
##'
##' @title QGIS algorithm Watershed basins
##'
##' @param ELEVATION `raster` - Elevation. Path to a raster layer.
##' @param CHANNELS `raster` - Channel Network. Path to a raster layer.
##' @param SINKROUTE `raster` - Sink Route. Path to a raster layer.
##' @param MINSIZE `number` - Min. Size. A numeric value.
##' @param BASINS `rasterDestination` - Watershed Basins. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * BASINS - outputRaster - Watershed Basins
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_watershedbasins <- function(ELEVATION = qgisprocess::qgis_default_value(), CHANNELS = qgisprocess::qgis_default_value(), SINKROUTE = qgisprocess::qgis_default_value(), MINSIZE = qgisprocess::qgis_default_value(), BASINS = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_QGIS_versions()
  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("saga:watershedbasins")
  output <- qgisprocess::qgis_run_algorithm("saga:watershedbasins",`ELEVATION` = ELEVATION, `CHANNELS` = CHANNELS, `SINKROUTE` = SINKROUTE, `MINSIZE` = MINSIZE, `BASINS` = BASINS,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "BASINS")
  }
}