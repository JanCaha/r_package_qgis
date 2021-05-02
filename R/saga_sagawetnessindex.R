##' QGIS Algorithm provided by SAGA Saga wetness index (saga:sagawetnessindex)
##'
##' @title QGIS algorithm Saga wetness index
##'
##' @param DEM `raster` - Elevation. Path to a raster layer.
##' @param SUCTION `number` - Suction. A numeric value.
##' @param AREA_TYPE `enum`  of `("[0] absolute catchment area", "[1] square root of catchment area", "[2] specific catchment area")` - Type of Area. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param SLOPE_TYPE `enum`  of `("[0] local slope", "[1] catchment slope")` - Type of Slope. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param SLOPE_MIN `number` - Suction. A numeric value.
##' @param SLOPE_OFF `number` - Suction. A numeric value.
##' @param SLOPE_WEIGHT `number` - Suction. A numeric value.
##' @param AREA `rasterDestination` - Catchment area. Path for new raster layer.
##' @param SLOPE `rasterDestination` - Catchment slope. Path for new raster layer.
##' @param AREA_MOD `rasterDestination` - Modified catchment area. Path for new raster layer.
##' @param TWI `rasterDestination` - Topographic Wetness Index. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * AREA - outputRaster - Catchment area
##' * SLOPE - outputRaster - Catchment slope
##' * AREA_MOD - outputRaster - Modified catchment area
##' * TWI - outputRaster - Topographic Wetness Index
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_sagawetnessindex <- function(DEM = qgisprocess::qgis_default_value(), SUCTION = qgisprocess::qgis_default_value(), AREA_TYPE = qgisprocess::qgis_default_value(), SLOPE_TYPE = qgisprocess::qgis_default_value(), SLOPE_MIN = qgisprocess::qgis_default_value(), SLOPE_OFF = qgisprocess::qgis_default_value(), SLOPE_WEIGHT = qgisprocess::qgis_default_value(), AREA = qgisprocess::qgis_default_value(), SLOPE = qgisprocess::qgis_default_value(), AREA_MOD = qgisprocess::qgis_default_value(), TWI = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("saga:sagawetnessindex")
  output <- qgisprocess::qgis_run_algorithm("saga:sagawetnessindex",`DEM` = DEM, `SUCTION` = SUCTION, `AREA_TYPE` = AREA_TYPE, `SLOPE_TYPE` = SLOPE_TYPE, `SLOPE_MIN` = SLOPE_MIN, `SLOPE_OFF` = SLOPE_OFF, `SLOPE_WEIGHT` = SLOPE_WEIGHT, `AREA` = AREA, `SLOPE` = SLOPE, `AREA_MOD` = AREA_MOD, `TWI` = TWI,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "AREA")
  }
}