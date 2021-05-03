##' QGIS Algorithm provided by SAGA Multi-band variation (saga:multibandvariation)
##'
##' @title QGIS algorithm Multi-band variation
##'
##' @param BANDS `multilayer` - Grids. .
##' @param RADIUS `number` - Radius (Cells). A numeric value.
##' @param DISTANCE_WEIGHTING_WEIGHTING `enum`  of `("[0] no distance weighting", "[1] inverse distance to a power", "[2] exponential", "[3] gaussian weighting")` - Distance Weighting. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param DISTANCE_WEIGHTING_IDW_POWER `number` - Inverse Distance Weighting Power. A numeric value.
##' @param DISTANCE_WEIGHTING_IDW_OFFSET `boolean` - Inverse Distance Offset. 1 for true/yes. 0 for false/no.
##' @param DISTANCE_WEIGHTING_BANDWIDTH `number` - Gaussian and Exponential Weighting Bandwidth. A numeric value.
##' @param MEAN `rasterDestination` - Mean Distance. Path for new raster layer.
##' @param STDDEV `rasterDestination` - Standard Deviation. Path for new raster layer.
##' @param DIFF `rasterDestination` - Distance. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * MEAN - outputRaster - Mean Distance
##' * STDDEV - outputRaster - Standard Deviation
##' * DIFF - outputRaster - Distance
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_multibandvariation <- function(BANDS = qgisprocess::qgis_default_value(), RADIUS = qgisprocess::qgis_default_value(), DISTANCE_WEIGHTING_WEIGHTING = qgisprocess::qgis_default_value(), DISTANCE_WEIGHTING_IDW_POWER = qgisprocess::qgis_default_value(), DISTANCE_WEIGHTING_IDW_OFFSET = qgisprocess::qgis_default_value(), DISTANCE_WEIGHTING_BANDWIDTH = qgisprocess::qgis_default_value(), MEAN = qgisprocess::qgis_default_value(), STDDEV = qgisprocess::qgis_default_value(), DIFF = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("saga:multibandvariation")

  output <- qgisprocess::qgis_run_algorithm("saga:multibandvariation", `BANDS` = BANDS, `RADIUS` = RADIUS, `DISTANCE_WEIGHTING_WEIGHTING` = DISTANCE_WEIGHTING_WEIGHTING, `DISTANCE_WEIGHTING_IDW_POWER` = DISTANCE_WEIGHTING_IDW_POWER, `DISTANCE_WEIGHTING_IDW_OFFSET` = DISTANCE_WEIGHTING_IDW_OFFSET, `DISTANCE_WEIGHTING_BANDWIDTH` = DISTANCE_WEIGHTING_BANDWIDTH, `MEAN` = MEAN, `STDDEV` = STDDEV, `DIFF` = DIFF,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "MEAN")
  }
}