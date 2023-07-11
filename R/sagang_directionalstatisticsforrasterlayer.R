##' QGIS Algorithm provided by SAGA Next Gen Directional statistics for raster layer (sagang:directionalstatisticsforrasterlayer). ---------------- Arguments ----------------  GRID: Grid 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer MEAN: Arithmetic Mean 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer DIFMEAN: Difference from Arithmetic Mean 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer MIN: Minimum 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer MAX: Maximum 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer RANGE: Range 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer VAR: Variance 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer STDDEV: Standard Deviation 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer STDDEVLO: Mean less Standard Deviation 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer STDDEVHI: Mean plus Standard Deviation 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer DEVMEAN: Deviation from Arithmetic Mean 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer PERCENT: Percentile 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer POINTS: Points (optional) 	Argument type:	source 	Acceptable values: 		- Path to a vector layer POINTS_OUT: Directional Statistics for Points 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer DIRECTION: Direction (Degree) 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression TOLERANCE: Tolerance (Degree) 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression MAXDISTANCE: Maximum Distance (Cells) 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression DW_WEIGHTING: Weighting Function 	Default value:	3 	Argument type:	enum 	Available values: 		- 0: (0) no distance weighting 		- 1: (1) inverse distance to a power 		- 2: (2) exponential 		- 3: (3) gaussian 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' DW_IDW_POWER: Power 	Default value:	2 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression DW_BANDWIDTH: Bandwidth 	Default value:	25 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Directional statistics for raster layer
##'
##' @param GRID `raster` - Grid. Path to a raster layer.
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
##' @param POINTS `source` - Points. Path to a vector layer.
##' @param POINTS_OUT `vectorDestination` - Directional Statistics for Points. Path for new vector layer.
##' @param DIRECTION `number` - Direction (Degree). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param TOLERANCE `number` - Tolerance (Degree). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param MAXDISTANCE `number` - Maximum Distance (Cells). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param DW_WEIGHTING `enum`  of `("(0) no distance weighting", "(1) inverse distance to a power", "(2) exponential", "(3) gaussian")` - Weighting Function. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param DW_IDW_POWER `number` - Power. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param DW_BANDWIDTH `number` - Bandwidth. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
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

sagang_directionalstatisticsforrasterlayer <- function(GRID = qgisprocess:::qgis_default_value(), MEAN = qgisprocess:::qgis_default_value(), DIFMEAN = qgisprocess:::qgis_default_value(), MIN = qgisprocess:::qgis_default_value(), MAX = qgisprocess:::qgis_default_value(), RANGE = qgisprocess:::qgis_default_value(), VAR = qgisprocess:::qgis_default_value(), STDDEV = qgisprocess:::qgis_default_value(), STDDEVLO = qgisprocess:::qgis_default_value(), STDDEVHI = qgisprocess:::qgis_default_value(), DEVMEAN = qgisprocess:::qgis_default_value(), PERCENT = qgisprocess:::qgis_default_value(), POINTS = qgisprocess:::qgis_default_value(), POINTS_OUT = qgisprocess:::qgis_default_value(), DIRECTION = qgisprocess:::qgis_default_value(), TOLERANCE = qgisprocess:::qgis_default_value(), MAXDISTANCE = qgisprocess:::qgis_default_value(), DW_WEIGHTING = qgisprocess:::qgis_default_value(), DW_IDW_POWER = qgisprocess:::qgis_default_value(), DW_BANDWIDTH = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:directionalstatisticsforrasterlayer")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:directionalstatisticsforrasterlayer", `GRID` = GRID, `MEAN` = MEAN, `DIFMEAN` = DIFMEAN, `MIN` = MIN, `MAX` = MAX, `RANGE` = RANGE, `VAR` = VAR, `STDDEV` = STDDEV, `STDDEVLO` = STDDEVLO, `STDDEVHI` = STDDEVHI, `DEVMEAN` = DEVMEAN, `PERCENT` = PERCENT, `POINTS` = POINTS, `POINTS_OUT` = POINTS_OUT, `DIRECTION` = DIRECTION, `TOLERANCE` = TOLERANCE, `MAXDISTANCE` = MAXDISTANCE, `DW_WEIGHTING` = DW_WEIGHTING, `DW_IDW_POWER` = DW_IDW_POWER, `DW_BANDWIDTH` = DW_BANDWIDTH,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:directionalstatisticsforrasterlayer", `GRID` = GRID, `MEAN` = MEAN, `DIFMEAN` = DIFMEAN, `MIN` = MIN, `MAX` = MAX, `RANGE` = RANGE, `VAR` = VAR, `STDDEV` = STDDEV, `STDDEVLO` = STDDEVLO, `STDDEVHI` = STDDEVHI, `DEVMEAN` = DEVMEAN, `PERCENT` = PERCENT, `POINTS` = POINTS, `POINTS_OUT` = POINTS_OUT, `DIRECTION` = DIRECTION, `TOLERANCE` = TOLERANCE, `MAXDISTANCE` = MAXDISTANCE, `DW_WEIGHTING` = DW_WEIGHTING, `DW_IDW_POWER` = DW_IDW_POWER, `DW_BANDWIDTH` = DW_BANDWIDTH,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "DEVMEAN")
  }
}