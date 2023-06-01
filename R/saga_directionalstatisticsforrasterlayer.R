##' QGIS Algorithm provided by SAGA Directional statistics for raster layer (saga:directionalstatisticsforrasterlayer)
##'
##' @title QGIS algorithm Directional statistics for raster layer
##'
##' @param GRID `raster` - Grid. Path to a raster layer.
##' @param POINTS `source` - Points. Path to a vector layer.
##' @param DIRECTION `number` - Direction (Degree). A numeric value.
##' @param TOLERANCE `number` - Tolerance (Degree). A numeric value.
##' @param MAXDISTANCE `number` - Maximum Distance (Cells). A numeric value.
##' @param DISTANCE_WEIGHTING_DW_WEIGHTING `enum`  of `("[0] no distance weighting", "[1] inverse distance to a power", "[2] exponential", "[3] gaussian weighting")` - Distance Weighting. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param DISTANCE_WEIGHTING_DW_IDW_POWER `number` - Inverse Distance Weighting Power. A numeric value.
##' @param DISTANCE_WEIGHTING_DW_IDW_OFFSET `boolean` - Inverse Distance Offset. 1 for true/yes. 0 for false/no.
##' @param DISTANCE_WEIGHTING_DW_BANDWIDTH `number` - Gaussian and Exponential Weighting Bandwidth. A numeric value.
##' @param MEAN `rasterDestination` - Arithmetic Mean. Path for new raster layer.
##' @param DIFMEAN `rasterDestination` - Difference from Arithmetic Mean. Path for new raster layer.
##' @param MIN `rasterDestination` - Minimum. Path for new raster layer.
##' @param MAX `rasterDestination` - Maximum. Path for new raster layer.
##' @param RANGE `rasterDestination` - Range. Path for new raster layer.
##' @param VAR `rasterDestination` - Variance. Path for new raster layer.
##' @param STDDEV `rasterDestination` - Standard Deviation. Path for new raster layer.
##' @param STDDEVLO `rasterDestination` - Mean less Standard Deviation. Path for new raster layer.
##' @param STDDEVHI `rasterDestination` - Mean plus Standard Deviation. Path for new raster layer.
##' @param DEVMEAN `rasterDestination` - Deviation from Arithmetic Mean. Path for new raster layer.
##' @param PERCENT `rasterDestination` - Percentile. Path for new raster layer.
##' @param POINTS_OUT `vectorDestination` - Directional Statistics for Points. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * DEVMEAN - outputRaster - Deviation from Arithmetic Mean
##' * DIFMEAN - outputRaster - Difference from Arithmetic Mean
##' * MAX - outputRaster - Maximum
##' * MEAN - outputRaster - Arithmetic Mean
##' * MIN - outputRaster - Minimum
##' * PERCENT - outputRaster - Percentile
##' * POINTS_OUT - outputVector - Directional Statistics for Points
##' * RANGE - outputRaster - Range
##' * STDDEV - outputRaster - Standard Deviation
##' * STDDEVHI - outputRaster - Mean plus Standard Deviation
##' * STDDEVLO - outputRaster - Mean less Standard Deviation
##' * VAR - outputRaster - Variance
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

saga_directionalstatisticsforrasterlayer <- function(GRID = qgisprocess:::qgis_default_value(), POINTS = qgisprocess:::qgis_default_value(), DIRECTION = qgisprocess:::qgis_default_value(), TOLERANCE = qgisprocess:::qgis_default_value(), MAXDISTANCE = qgisprocess:::qgis_default_value(), DISTANCE_WEIGHTING_DW_WEIGHTING = qgisprocess:::qgis_default_value(), DISTANCE_WEIGHTING_DW_IDW_POWER = qgisprocess:::qgis_default_value(), DISTANCE_WEIGHTING_DW_IDW_OFFSET = qgisprocess:::qgis_default_value(), DISTANCE_WEIGHTING_DW_BANDWIDTH = qgisprocess:::qgis_default_value(), MEAN = qgisprocess:::qgis_default_value(), DIFMEAN = qgisprocess:::qgis_default_value(), MIN = qgisprocess:::qgis_default_value(), MAX = qgisprocess:::qgis_default_value(), RANGE = qgisprocess:::qgis_default_value(), VAR = qgisprocess:::qgis_default_value(), STDDEV = qgisprocess:::qgis_default_value(), STDDEVLO = qgisprocess:::qgis_default_value(), STDDEVHI = qgisprocess:::qgis_default_value(), DEVMEAN = qgisprocess:::qgis_default_value(), PERCENT = qgisprocess:::qgis_default_value(), POINTS_OUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:directionalstatisticsforrasterlayer")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:directionalstatisticsforrasterlayer", `GRID` = GRID, `POINTS` = POINTS, `DIRECTION` = DIRECTION, `TOLERANCE` = TOLERANCE, `MAXDISTANCE` = MAXDISTANCE, `DISTANCE_WEIGHTING_DW_WEIGHTING` = DISTANCE_WEIGHTING_DW_WEIGHTING, `DISTANCE_WEIGHTING_DW_IDW_POWER` = DISTANCE_WEIGHTING_DW_IDW_POWER, `DISTANCE_WEIGHTING_DW_IDW_OFFSET` = DISTANCE_WEIGHTING_DW_IDW_OFFSET, `DISTANCE_WEIGHTING_DW_BANDWIDTH` = DISTANCE_WEIGHTING_DW_BANDWIDTH, `MEAN` = MEAN, `DIFMEAN` = DIFMEAN, `MIN` = MIN, `MAX` = MAX, `RANGE` = RANGE, `VAR` = VAR, `STDDEV` = STDDEV, `STDDEVLO` = STDDEVLO, `STDDEVHI` = STDDEVHI, `DEVMEAN` = DEVMEAN, `PERCENT` = PERCENT, `POINTS_OUT` = POINTS_OUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:directionalstatisticsforrasterlayer", `GRID` = GRID, `POINTS` = POINTS, `DIRECTION` = DIRECTION, `TOLERANCE` = TOLERANCE, `MAXDISTANCE` = MAXDISTANCE, `DISTANCE_WEIGHTING_DW_WEIGHTING` = DISTANCE_WEIGHTING_DW_WEIGHTING, `DISTANCE_WEIGHTING_DW_IDW_POWER` = DISTANCE_WEIGHTING_DW_IDW_POWER, `DISTANCE_WEIGHTING_DW_IDW_OFFSET` = DISTANCE_WEIGHTING_DW_IDW_OFFSET, `DISTANCE_WEIGHTING_DW_BANDWIDTH` = DISTANCE_WEIGHTING_DW_BANDWIDTH, `MEAN` = MEAN, `DIFMEAN` = DIFMEAN, `MIN` = MIN, `MAX` = MAX, `RANGE` = RANGE, `VAR` = VAR, `STDDEV` = STDDEV, `STDDEVLO` = STDDEVLO, `STDDEVHI` = STDDEVHI, `DEVMEAN` = DEVMEAN, `PERCENT` = PERCENT, `POINTS_OUT` = POINTS_OUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "DEVMEAN")
  }
}