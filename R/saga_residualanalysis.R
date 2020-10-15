##' QGIS Algorithm provided by SAGA Residual analysis (saga:residualanalysis)
##'
##' @title QGIS algorithm Residual analysis
##'
##' @param GRID `raster` - Grid. Path to a raster layer.
##' @param MODE `enum`  of `("[0] square", "[1] circle")` - Search Mode. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param RADIUS `number` - Radius (Cells). A numeric value.
##' @param BCENTER `boolean` - Include Center Cell. 1 for true/yes. 0 for false/no.
##' @param DISTANCE_WEIGHTING_DW_WEIGHTING `enum`  of `("[0] no distance weighting", "[1] inverse distance to a power", "[2] exponential", "[3] gaussian weighting")` - Distance Weighting. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param DISTANCE_WEIGHTING_DW_IDW_POWER `number` - Inverse Distance Weighting Power. A numeric value.
##' @param DISTANCE_WEIGHTING_DW_IDW_OFFSET `boolean` - Inverse Distance Offset. 1 for true/yes. 0 for false/no.
##' @param DISTANCE_WEIGHTING_DW_BANDWIDTH `number` - Gaussian and Exponential Weighting Bandwidth. A numeric value.
##' @param MEAN `rasterDestination` - Mean Value. Path for new raster layer.
##' @param DIFF `rasterDestination` - Difference from Mean Value. Path for new raster layer.
##' @param STDDEV `rasterDestination` - Standard Deviation. Path for new raster layer.
##' @param RANGE `rasterDestination` - Value Range. Path for new raster layer.
##' @param MIN `rasterDestination` - Minimum Value. Path for new raster layer.
##' @param MAX `rasterDestination` - Maximum Value. Path for new raster layer.
##' @param DEVMEAN `rasterDestination` - Deviation from Mean Value. Path for new raster layer.
##' @param PERCENT `rasterDestination` - Percentile. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * MEAN - outputRaster - Mean Value
##' * DIFF - outputRaster - Difference from Mean Value
##' * STDDEV - outputRaster - Standard Deviation
##' * RANGE - outputRaster - Value Range
##' * MIN - outputRaster - Minimum Value
##' * MAX - outputRaster - Maximum Value
##' * DEVMEAN - outputRaster - Deviation from Mean Value
##' * PERCENT - outputRaster - Percentile
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_residualanalysis <- function(GRID = qgisprocess::qgis_default_value(), MODE = qgisprocess::qgis_default_value(), RADIUS = qgisprocess::qgis_default_value(), BCENTER = qgisprocess::qgis_default_value(), DISTANCE_WEIGHTING_DW_WEIGHTING = qgisprocess::qgis_default_value(), DISTANCE_WEIGHTING_DW_IDW_POWER = qgisprocess::qgis_default_value(), DISTANCE_WEIGHTING_DW_IDW_OFFSET = qgisprocess::qgis_default_value(), DISTANCE_WEIGHTING_DW_BANDWIDTH = qgisprocess::qgis_default_value(), MEAN = qgisprocess::qgis_default_value(), DIFF = qgisprocess::qgis_default_value(), STDDEV = qgisprocess::qgis_default_value(), RANGE = qgisprocess::qgis_default_value(), MIN = qgisprocess::qgis_default_value(), MAX = qgisprocess::qgis_default_value(), DEVMEAN = qgisprocess::qgis_default_value(), PERCENT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("saga:residualanalysis",`GRID` = GRID, `MODE` = MODE, `RADIUS` = RADIUS, `BCENTER` = BCENTER, `DISTANCE_WEIGHTING_DW_WEIGHTING` = DISTANCE_WEIGHTING_DW_WEIGHTING, `DISTANCE_WEIGHTING_DW_IDW_POWER` = DISTANCE_WEIGHTING_DW_IDW_POWER, `DISTANCE_WEIGHTING_DW_IDW_OFFSET` = DISTANCE_WEIGHTING_DW_IDW_OFFSET, `DISTANCE_WEIGHTING_DW_BANDWIDTH` = DISTANCE_WEIGHTING_DW_BANDWIDTH, `MEAN` = MEAN, `DIFF` = DIFF, `STDDEV` = STDDEV, `RANGE` = RANGE, `MIN` = MIN, `MAX` = MAX, `DEVMEAN` = DEVMEAN, `PERCENT` = PERCENT,...)
  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "MEAN")
}
}