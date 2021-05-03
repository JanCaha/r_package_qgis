##' QGIS Algorithm provided by SAGA Channel network and drainage basins (saga:channelnetworkanddrainagebasins)
##'
##' @title QGIS algorithm Channel network and drainage basins
##'
##' @param DEM `raster` - Elevation. Path to a raster layer.
##' @param THRESHOLD `number` - Threshold. A numeric value.
##' @param DIRECTION `rasterDestination` - Flow Direction. Path for new raster layer.
##' @param CONNECTION `rasterDestination` - Flow Connectivity. Path for new raster layer.
##' @param ORDER `rasterDestination` - Strahler Order. Path for new raster layer.
##' @param BASIN `rasterDestination` - Drainage Basins. Path for new raster layer.
##' @param SEGMENTS `vectorDestination` - Channels. Path for new vector layer.
##' @param BASINS `vectorDestination` - Drainage Basins. Path for new vector layer.
##' @param NODES `vectorDestination` - Junctions. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * DIRECTION - outputRaster - Flow Direction
##' * CONNECTION - outputRaster - Flow Connectivity
##' * ORDER - outputRaster - Strahler Order
##' * BASIN - outputRaster - Drainage Basins
##' * SEGMENTS - outputVector - Channels
##' * BASINS - outputVector - Drainage Basins
##' * NODES - outputVector - Junctions
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_channelnetworkanddrainagebasins <- function(DEM = qgisprocess::qgis_default_value(), THRESHOLD = qgisprocess::qgis_default_value(), DIRECTION = qgisprocess::qgis_default_value(), CONNECTION = qgisprocess::qgis_default_value(), ORDER = qgisprocess::qgis_default_value(), BASIN = qgisprocess::qgis_default_value(), SEGMENTS = qgisprocess::qgis_default_value(), BASINS = qgisprocess::qgis_default_value(), NODES = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_QGIS_versions()
  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("saga:channelnetworkanddrainagebasins")
  output <- qgisprocess::qgis_run_algorithm("saga:channelnetworkanddrainagebasins",`DEM` = DEM, `THRESHOLD` = THRESHOLD, `DIRECTION` = DIRECTION, `CONNECTION` = CONNECTION, `ORDER` = ORDER, `BASIN` = BASIN, `SEGMENTS` = SEGMENTS, `BASINS` = BASINS, `NODES` = NODES,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "DIRECTION")
  }
}