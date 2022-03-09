##' QGIS Algorithm provided by SAGA Terrain ruggedness index (tri) (saga:terrainruggednessindextri)
##'
##' @title QGIS algorithm Terrain ruggedness index (tri)
##'
##' @param DEM `raster` - Elevation. Path to a raster layer.
##' @param RADIUS `number` - Radius (Cells). A numeric value.
##' @param DISTANCE_WEIGHTING_DW_WEIGHTING `enum`  of `("[0] no distance weighting", "[1] inverse distance to a power", "[2] exponential", "[3] gaussian weighting")` - Distance Weighting. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param DISTANCE_WEIGHTING_DW_IDW_POWER `number` - Inverse Distance Weighting Power. A numeric value.
##' @param DISTANCE_WEIGHTING_DW_BANDWIDTH `number` - Gaussian and Exponential Weighting Bandwidth. A numeric value.
##' @param TRI `rasterDestination` - Terrain Ruggedness Index (TRI). Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * TRI - outputRaster - Terrain Ruggedness Index (TRI)
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_terrainruggednessindextri <- function(DEM = qgisprocess::qgis_default_value(), RADIUS = qgisprocess::qgis_default_value(), DISTANCE_WEIGHTING_DW_WEIGHTING = qgisprocess::qgis_default_value(), DISTANCE_WEIGHTING_DW_IDW_POWER = qgisprocess::qgis_default_value(), DISTANCE_WEIGHTING_DW_BANDWIDTH = qgisprocess::qgis_default_value(), TRI = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:terrainruggednessindextri")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:terrainruggednessindextri", `DEM` = DEM, `RADIUS` = RADIUS, `DISTANCE_WEIGHTING_DW_WEIGHTING` = DISTANCE_WEIGHTING_DW_WEIGHTING, `DISTANCE_WEIGHTING_DW_IDW_POWER` = DISTANCE_WEIGHTING_DW_IDW_POWER, `DISTANCE_WEIGHTING_DW_BANDWIDTH` = DISTANCE_WEIGHTING_DW_BANDWIDTH, `TRI` = TRI,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:terrainruggednessindextri", `DEM` = DEM, `RADIUS` = RADIUS, `DISTANCE_WEIGHTING_DW_WEIGHTING` = DISTANCE_WEIGHTING_DW_WEIGHTING, `DISTANCE_WEIGHTING_DW_IDW_POWER` = DISTANCE_WEIGHTING_DW_IDW_POWER, `DISTANCE_WEIGHTING_DW_BANDWIDTH` = DISTANCE_WEIGHTING_DW_BANDWIDTH, `TRI` = TRI,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "TRI")
  }
}