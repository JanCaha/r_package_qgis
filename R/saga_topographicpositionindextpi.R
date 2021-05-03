##' QGIS Algorithm provided by SAGA Topographic position index (tpi) (saga:topographicpositionindextpi)
##'
##' @title QGIS algorithm Topographic position index (tpi)
##'
##' @param DEM `raster` - Elevation. Path to a raster layer.
##' @param STANDARD `boolean` - Standardize. 1 for true/yes. 0 for false/no.
##' @param RADIUS_MIN `number` - Min Radius. A numeric value.
##' @param RADIUS_MAX `number` - Max Radius. A numeric value.
##' @param DW_WEIGHTING `enum`  of `("[0] no distance weighting", "[1] inverse distance to a power", "[2] exponential", "[3] gaussian weighting")` - Distance Weighting. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param DW_IDW_POWER `number` - Inverse Distance Weighting Power. A numeric value.
##' @param DW_IDW_OFFSET `boolean` - Inverse Distance Offset. 1 for true/yes. 0 for false/no.
##' @param DW_BANDWIDTH `number` - Gaussian and Exponential Weighting Bandwidth. A numeric value.
##' @param TPI `rasterDestination` - Topographic Position Index. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * TPI - outputRaster - Topographic Position Index
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_topographicpositionindextpi <- function(DEM = qgisprocess::qgis_default_value(), STANDARD = qgisprocess::qgis_default_value(), RADIUS_MIN = qgisprocess::qgis_default_value(), RADIUS_MAX = qgisprocess::qgis_default_value(), DW_WEIGHTING = qgisprocess::qgis_default_value(), DW_IDW_POWER = qgisprocess::qgis_default_value(), DW_IDW_OFFSET = qgisprocess::qgis_default_value(), DW_BANDWIDTH = qgisprocess::qgis_default_value(), TPI = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_QGIS_versions()
  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("saga:topographicpositionindextpi")
  output <- qgisprocess::qgis_run_algorithm("saga:topographicpositionindextpi",`DEM` = DEM, `STANDARD` = STANDARD, `RADIUS_MIN` = RADIUS_MIN, `RADIUS_MAX` = RADIUS_MAX, `DW_WEIGHTING` = DW_WEIGHTING, `DW_IDW_POWER` = DW_IDW_POWER, `DW_IDW_OFFSET` = DW_IDW_OFFSET, `DW_BANDWIDTH` = DW_BANDWIDTH, `TPI` = TPI,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "TPI")
  }
}