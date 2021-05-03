##' QGIS Algorithm provided by SAGA Tpi based landform classification (saga:tpibasedlandformclassification)
##'
##' @title QGIS algorithm Tpi based landform classification
##'
##' @param DEM `raster` - Elevation. Path to a raster layer.
##' @param RADIUS_A_MIN `number` - Min Radius A. A numeric value.
##' @param RADIUS_A_MAX `number` - Max Radius A. A numeric value.
##' @param RADIUS_B_MIN `number` - Min Radius B. A numeric value.
##' @param RADIUS_B_MAX `number` - Max Radius B. A numeric value.
##' @param DW_WEIGHTING `enum`  of `("[0] no distance weighting", "[1] inverse distance to a power", "[2] exponential", "[3] gaussian weighting")` - Distance Weighting. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param DW_IDW_POWER `number` - Inverse Distance Weighting Power. A numeric value.
##' @param DW_IDW_OFFSET `boolean` - Inverse Distance Offset. 1 for true/yes. 0 for false/no.
##' @param DW_BANDWIDTH `number` - Gaussian and Exponential Weighting Bandwidth. A numeric value.
##' @param LANDFORMS `rasterDestination` - Landforms. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * LANDFORMS - outputRaster - Landforms
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_tpibasedlandformclassification <- function(DEM = qgisprocess::qgis_default_value(), RADIUS_A_MIN = qgisprocess::qgis_default_value(), RADIUS_A_MAX = qgisprocess::qgis_default_value(), RADIUS_B_MIN = qgisprocess::qgis_default_value(), RADIUS_B_MAX = qgisprocess::qgis_default_value(), DW_WEIGHTING = qgisprocess::qgis_default_value(), DW_IDW_POWER = qgisprocess::qgis_default_value(), DW_IDW_OFFSET = qgisprocess::qgis_default_value(), DW_BANDWIDTH = qgisprocess::qgis_default_value(), LANDFORMS = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_QGIS_versions()
  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("saga:tpibasedlandformclassification")
  output <- qgisprocess::qgis_run_algorithm("saga:tpibasedlandformclassification",`DEM` = DEM, `RADIUS_A_MIN` = RADIUS_A_MIN, `RADIUS_A_MAX` = RADIUS_A_MAX, `RADIUS_B_MIN` = RADIUS_B_MIN, `RADIUS_B_MAX` = RADIUS_B_MAX, `DW_WEIGHTING` = DW_WEIGHTING, `DW_IDW_POWER` = DW_IDW_POWER, `DW_IDW_OFFSET` = DW_IDW_OFFSET, `DW_BANDWIDTH` = DW_BANDWIDTH, `LANDFORMS` = LANDFORMS,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "LANDFORMS")
  }
}