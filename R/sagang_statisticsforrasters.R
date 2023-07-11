##' QGIS Algorithm provided by SAGA Next Gen Statistics for rasters (sagang:statisticsforrasters). ---------------- Arguments ----------------  GRIDS: Values 	Argument type:	multilayer WEIGHTS: Weights (optional) 	Argument type:	multilayer RESAMPLING: Resampling 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) Nearest Neighbour 		- 1: (1) Bilinear Interpolation 		- 2: (2) Bicubic Spline Interpolation 		- 3: (3) B-Spline Interpolation 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' MEAN: Arithmetic Mean 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer MIN: Minimum 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer MAX: Maximum 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer RANGE: Range 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer SUM: Sum 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer SUM2: Sum2 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer VAR: Variance 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer STDDEV: Standard Deviation 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer STDDEVLO: Mean less Standard Deviation 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer STDDEVHI: Mean plus Standard Deviation 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer PCTL: Percentile 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer PCTL_VAL: Percentile 	Default value:	50 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Statistics for rasters
##'
##' @param GRIDS `multilayer` - Values. .
##' @param WEIGHTS `multilayer` - Weights. .
##' @param RESAMPLING `enum`  of `("(0) Nearest Neighbour", "(1) Bilinear Interpolation", "(2) Bicubic Spline Interpolation", "(3) B-Spline Interpolation")` - Resampling. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param MEAN `rasterDestination` - Arithmetic Mean. Path for new raster layer.
##' @param MIN `rasterDestination` - Minimum. Path for new raster layer.
##' @param MAX `rasterDestination` - Maximum. Path for new raster layer.
##' @param RANGE `rasterDestination` - Range. Path for new raster layer.
##' @param SUM `rasterDestination` - Sum. Path for new raster layer.
##' @param SUM2 `rasterDestination` - Sum2. Path for new raster layer.
##' @param VAR `rasterDestination` - Variance. Path for new raster layer.
##' @param STDDEV `rasterDestination` - Standard Deviation. Path for new raster layer.
##' @param STDDEVLO `rasterDestination` - Mean less Standard Deviation. Path for new raster layer.
##' @param STDDEVHI `rasterDestination` - Mean plus Standard Deviation. Path for new raster layer.
##' @param PCTL `rasterDestination` - Percentile. Path for new raster layer.
##' @param PCTL_VAL `number` - Percentile. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * MAX - outputRaster - Maximum
##' * MEAN - outputRaster - Arithmetic Mean
##' * MIN - outputRaster - Minimum
##' * PCTL - outputRaster - Percentile
##' * RANGE - outputRaster - Range
##' * STDDEV - outputRaster - Standard Deviation
##' * STDDEVHI - outputRaster - Mean plus Standard Deviation
##' * STDDEVLO - outputRaster - Mean less Standard Deviation
##' * SUM - outputRaster - Sum
##' * SUM2 - outputRaster - Sum2
##' * VAR - outputRaster - Variance
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_statisticsforrasters <- function(GRIDS = qgisprocess:::qgis_default_value(), WEIGHTS = qgisprocess:::qgis_default_value(), RESAMPLING = qgisprocess:::qgis_default_value(), MEAN = qgisprocess:::qgis_default_value(), MIN = qgisprocess:::qgis_default_value(), MAX = qgisprocess:::qgis_default_value(), RANGE = qgisprocess:::qgis_default_value(), SUM = qgisprocess:::qgis_default_value(), SUM2 = qgisprocess:::qgis_default_value(), VAR = qgisprocess:::qgis_default_value(), STDDEV = qgisprocess:::qgis_default_value(), STDDEVLO = qgisprocess:::qgis_default_value(), STDDEVHI = qgisprocess:::qgis_default_value(), PCTL = qgisprocess:::qgis_default_value(), PCTL_VAL = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:statisticsforrasters")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:statisticsforrasters", `GRIDS` = GRIDS, `WEIGHTS` = WEIGHTS, `RESAMPLING` = RESAMPLING, `MEAN` = MEAN, `MIN` = MIN, `MAX` = MAX, `RANGE` = RANGE, `SUM` = SUM, `SUM2` = SUM2, `VAR` = VAR, `STDDEV` = STDDEV, `STDDEVLO` = STDDEVLO, `STDDEVHI` = STDDEVHI, `PCTL` = PCTL, `PCTL_VAL` = PCTL_VAL,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:statisticsforrasters", `GRIDS` = GRIDS, `WEIGHTS` = WEIGHTS, `RESAMPLING` = RESAMPLING, `MEAN` = MEAN, `MIN` = MIN, `MAX` = MAX, `RANGE` = RANGE, `SUM` = SUM, `SUM2` = SUM2, `VAR` = VAR, `STDDEV` = STDDEV, `STDDEVLO` = STDDEVLO, `STDDEVHI` = STDDEVHI, `PCTL` = PCTL, `PCTL_VAL` = PCTL_VAL,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "MAX")
  }
}