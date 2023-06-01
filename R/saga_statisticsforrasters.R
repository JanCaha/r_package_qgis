##' QGIS Algorithm provided by SAGA Statistics for rasters (saga:statisticsforrasters)
##'
##' @title QGIS algorithm Statistics for rasters
##'
##' @param GRIDS `multilayer` - Grids. .
##' @param PCTL_VAL `number` - Percentile. A numeric value.
##' @param MEAN `rasterDestination` - Arithmetic Mean. Path for new raster layer.
##' @param MIN `rasterDestination` - Minimum. Path for new raster layer.
##' @param MAX `rasterDestination` - Maximum. Path for new raster layer.
##' @param VAR `rasterDestination` - Variance. Path for new raster layer.
##' @param SUM `rasterDestination` - Sum. Path for new raster layer.
##' @param RANGE `rasterDestination` - Range. Path for new raster layer.
##' @param PCTL `rasterDestination` - Percentile. Path for new raster layer.
##' @param STDDEV `rasterDestination` - Standard Deviation. Path for new raster layer.
##' @param STDDEVLO `rasterDestination` - Mean less Standard Deviation. Path for new raster layer.
##' @param STDDEVHI `rasterDestination` - Mean plus Standard Deviation. Path for new raster layer.
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
##' * VAR - outputRaster - Variance
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

saga_statisticsforrasters <- function(GRIDS = qgisprocess:::qgis_default_value(), PCTL_VAL = qgisprocess:::qgis_default_value(), MEAN = qgisprocess:::qgis_default_value(), MIN = qgisprocess:::qgis_default_value(), MAX = qgisprocess:::qgis_default_value(), VAR = qgisprocess:::qgis_default_value(), SUM = qgisprocess:::qgis_default_value(), RANGE = qgisprocess:::qgis_default_value(), PCTL = qgisprocess:::qgis_default_value(), STDDEV = qgisprocess:::qgis_default_value(), STDDEVLO = qgisprocess:::qgis_default_value(), STDDEVHI = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:statisticsforrasters")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:statisticsforrasters", `GRIDS` = GRIDS, `PCTL_VAL` = PCTL_VAL, `MEAN` = MEAN, `MIN` = MIN, `MAX` = MAX, `VAR` = VAR, `SUM` = SUM, `RANGE` = RANGE, `PCTL` = PCTL, `STDDEV` = STDDEV, `STDDEVLO` = STDDEVLO, `STDDEVHI` = STDDEVHI,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:statisticsforrasters", `GRIDS` = GRIDS, `PCTL_VAL` = PCTL_VAL, `MEAN` = MEAN, `MIN` = MIN, `MAX` = MAX, `VAR` = VAR, `SUM` = SUM, `RANGE` = RANGE, `PCTL` = PCTL, `STDDEV` = STDDEV, `STDDEVLO` = STDDEVLO, `STDDEVHI` = STDDEVHI,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "MAX")
  }
}