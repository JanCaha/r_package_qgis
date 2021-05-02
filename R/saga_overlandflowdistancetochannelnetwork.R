##' QGIS Algorithm provided by SAGA Overland flow distance to channel network (saga:overlandflowdistancetochannelnetwork)
##'
##' @title QGIS algorithm Overland flow distance to channel network
##'
##' @param ELEVATION `raster` - Elevation. Path to a raster layer.
##' @param CHANNELS `raster` - Channel Network. Path to a raster layer.
##' @param METHOD `enum`  of `("[0] D8", "[1] MFD")` - Flow Algorithm. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param DISTANCE `rasterDestination` - Overland Flow Distance. Path for new raster layer.
##' @param DISTVERT `rasterDestination` - Vertical Overland Flow Distance. Path for new raster layer.
##' @param DISTHORZ `rasterDestination` - Horizontal Overland Flow Distance. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * DISTANCE - outputRaster - Overland Flow Distance
##' * DISTVERT - outputRaster - Vertical Overland Flow Distance
##' * DISTHORZ - outputRaster - Horizontal Overland Flow Distance
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_overlandflowdistancetochannelnetwork <- function(ELEVATION = qgisprocess::qgis_default_value(), CHANNELS = qgisprocess::qgis_default_value(), METHOD = qgisprocess::qgis_default_value(), DISTANCE = qgisprocess::qgis_default_value(), DISTVERT = qgisprocess::qgis_default_value(), DISTHORZ = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("saga:overlandflowdistancetochannelnetwork")
  output <- qgisprocess::qgis_run_algorithm("saga:overlandflowdistancetochannelnetwork",`ELEVATION` = ELEVATION, `CHANNELS` = CHANNELS, `METHOD` = METHOD, `DISTANCE` = DISTANCE, `DISTVERT` = DISTVERT, `DISTHORZ` = DISTHORZ,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "DISTANCE")
  }
}