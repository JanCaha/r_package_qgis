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
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * BASIN - outputRaster - Drainage Basins
##' * BASINS - outputVector - Drainage Basins
##' * CONNECTION - outputRaster - Flow Connectivity
##' * DIRECTION - outputRaster - Flow Direction
##' * NODES - outputVector - Junctions
##' * ORDER - outputRaster - Strahler Order
##' * SEGMENTS - outputVector - Channels
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

saga_channelnetworkanddrainagebasins <- function(DEM = qgisprocess:::qgis_default_value(), THRESHOLD = qgisprocess:::qgis_default_value(), DIRECTION = qgisprocess:::qgis_default_value(), CONNECTION = qgisprocess:::qgis_default_value(), ORDER = qgisprocess:::qgis_default_value(), BASIN = qgisprocess:::qgis_default_value(), SEGMENTS = qgisprocess:::qgis_default_value(), BASINS = qgisprocess:::qgis_default_value(), NODES = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:channelnetworkanddrainagebasins")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:channelnetworkanddrainagebasins", `DEM` = DEM, `THRESHOLD` = THRESHOLD, `DIRECTION` = DIRECTION, `CONNECTION` = CONNECTION, `ORDER` = ORDER, `BASIN` = BASIN, `SEGMENTS` = SEGMENTS, `BASINS` = BASINS, `NODES` = NODES,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:channelnetworkanddrainagebasins", `DEM` = DEM, `THRESHOLD` = THRESHOLD, `DIRECTION` = DIRECTION, `CONNECTION` = CONNECTION, `ORDER` = ORDER, `BASIN` = BASIN, `SEGMENTS` = SEGMENTS, `BASINS` = BASINS, `NODES` = NODES,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "BASIN")
  }
}