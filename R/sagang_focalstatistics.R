##' QGIS Algorithm provided by SAGA Next Gen Focal statistics (sagang:focalstatistics). ---------------- Arguments ----------------  GRID: Grid 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer MEAN: Mean Value 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer MIN: Minimum Value 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer MAX: Maximum Value 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer RANGE: Value Range 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer STDDEV: Standard Deviation 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer VARIANCE: Variance 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer SUM: Sum 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer DIFF: Difference from Mean Value 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer DEVMEAN: Deviation from Mean Value 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer PERCENT: Percentile 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer MEDIAN: Median 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer MINORITY: Minority 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer MAJORITY: Majority 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer BCENTER: Include Center Cell 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression KERNEL_TYPE: Kernel Type 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) Square 		- 1: (1) Circle 		- 2: (2) Annulus 		- 3: (3) Sector 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' KERNEL_INNER: Inner Radius 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression KERNEL_RADIUS: Radius 	Default value:	2 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression KERNEL_DIRECTION: Direction 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression KERNEL_TOLERANCE: Tolerance 	Default value:	5 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression DW_WEIGHTING: Weighting Function 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) no distance weighting 		- 1: (1) inverse distance to a power 		- 2: (2) exponential 		- 3: (3) gaussian 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' DW_IDW_POWER: Power 	Default value:	2 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression DW_BANDWIDTH: Bandwidth 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Focal statistics
##'
##' @param GRID `raster` - Grid. Path to a raster layer.
##' @param MEAN `rasterDestination` - Mean Value. Path for new raster layer.
##' @param MIN `rasterDestination` - Minimum Value. Path for new raster layer.
##' @param MAX `rasterDestination` - Maximum Value. Path for new raster layer.
##' @param RANGE `rasterDestination` - Value Range. Path for new raster layer.
##' @param STDDEV `rasterDestination` - Standard Deviation. Path for new raster layer.
##' @param VARIANCE `rasterDestination` - Variance. Path for new raster layer.
##' @param SUM `rasterDestination` - Sum. Path for new raster layer.
##' @param DIFF `rasterDestination` - Difference from Mean Value. Path for new raster layer.
##' @param DEVMEAN `rasterDestination` - Deviation from Mean Value. Path for new raster layer.
##' @param PERCENT `rasterDestination` - Percentile. Path for new raster layer.
##' @param MEDIAN `rasterDestination` - Median. Path for new raster layer.
##' @param MINORITY `rasterDestination` - Minority. Path for new raster layer.
##' @param MAJORITY `rasterDestination` - Majority. Path for new raster layer.
##' @param BCENTER `boolean` - Include Center Cell. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param KERNEL_TYPE `enum`  of `("(0) Square", "(1) Circle", "(2) Annulus", "(3) Sector")` - Kernel Type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param KERNEL_INNER `number` - Inner Radius. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param KERNEL_RADIUS `number` - Radius. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param KERNEL_DIRECTION `number` - Direction. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param KERNEL_TOLERANCE `number` - Tolerance. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
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
##' * DEVMEAN - outputRaster - Deviation from Mean Value
##' * DIFF - outputRaster - Difference from Mean Value
##' * MAJORITY - outputRaster - Majority
##' * MAX - outputRaster - Maximum Value
##' * MEAN - outputRaster - Mean Value
##' * MEDIAN - outputRaster - Median
##' * MIN - outputRaster - Minimum Value
##' * MINORITY - outputRaster - Minority
##' * PERCENT - outputRaster - Percentile
##' * RANGE - outputRaster - Value Range
##' * STDDEV - outputRaster - Standard Deviation
##' * SUM - outputRaster - Sum
##' * VARIANCE - outputRaster - Variance
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_focalstatistics <- function(GRID = qgisprocess:::qgis_default_value(), MEAN = qgisprocess:::qgis_default_value(), MIN = qgisprocess:::qgis_default_value(), MAX = qgisprocess:::qgis_default_value(), RANGE = qgisprocess:::qgis_default_value(), STDDEV = qgisprocess:::qgis_default_value(), VARIANCE = qgisprocess:::qgis_default_value(), SUM = qgisprocess:::qgis_default_value(), DIFF = qgisprocess:::qgis_default_value(), DEVMEAN = qgisprocess:::qgis_default_value(), PERCENT = qgisprocess:::qgis_default_value(), MEDIAN = qgisprocess:::qgis_default_value(), MINORITY = qgisprocess:::qgis_default_value(), MAJORITY = qgisprocess:::qgis_default_value(), BCENTER = qgisprocess:::qgis_default_value(), KERNEL_TYPE = qgisprocess:::qgis_default_value(), KERNEL_INNER = qgisprocess:::qgis_default_value(), KERNEL_RADIUS = qgisprocess:::qgis_default_value(), KERNEL_DIRECTION = qgisprocess:::qgis_default_value(), KERNEL_TOLERANCE = qgisprocess:::qgis_default_value(), DW_WEIGHTING = qgisprocess:::qgis_default_value(), DW_IDW_POWER = qgisprocess:::qgis_default_value(), DW_BANDWIDTH = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:focalstatistics")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:focalstatistics", `GRID` = GRID, `MEAN` = MEAN, `MIN` = MIN, `MAX` = MAX, `RANGE` = RANGE, `STDDEV` = STDDEV, `VARIANCE` = VARIANCE, `SUM` = SUM, `DIFF` = DIFF, `DEVMEAN` = DEVMEAN, `PERCENT` = PERCENT, `MEDIAN` = MEDIAN, `MINORITY` = MINORITY, `MAJORITY` = MAJORITY, `BCENTER` = BCENTER, `KERNEL_TYPE` = KERNEL_TYPE, `KERNEL_INNER` = KERNEL_INNER, `KERNEL_RADIUS` = KERNEL_RADIUS, `KERNEL_DIRECTION` = KERNEL_DIRECTION, `KERNEL_TOLERANCE` = KERNEL_TOLERANCE, `DW_WEIGHTING` = DW_WEIGHTING, `DW_IDW_POWER` = DW_IDW_POWER, `DW_BANDWIDTH` = DW_BANDWIDTH,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:focalstatistics", `GRID` = GRID, `MEAN` = MEAN, `MIN` = MIN, `MAX` = MAX, `RANGE` = RANGE, `STDDEV` = STDDEV, `VARIANCE` = VARIANCE, `SUM` = SUM, `DIFF` = DIFF, `DEVMEAN` = DEVMEAN, `PERCENT` = PERCENT, `MEDIAN` = MEDIAN, `MINORITY` = MINORITY, `MAJORITY` = MAJORITY, `BCENTER` = BCENTER, `KERNEL_TYPE` = KERNEL_TYPE, `KERNEL_INNER` = KERNEL_INNER, `KERNEL_RADIUS` = KERNEL_RADIUS, `KERNEL_DIRECTION` = KERNEL_DIRECTION, `KERNEL_TOLERANCE` = KERNEL_TOLERANCE, `DW_WEIGHTING` = DW_WEIGHTING, `DW_IDW_POWER` = DW_IDW_POWER, `DW_BANDWIDTH` = DW_BANDWIDTH,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "DEVMEAN")
  }
}