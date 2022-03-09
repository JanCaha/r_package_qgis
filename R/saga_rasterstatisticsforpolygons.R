##' QGIS Algorithm provided by SAGA Raster statistics for polygons (saga:rasterstatisticsforpolygons)
##'
##' @title QGIS algorithm Raster statistics for polygons
##'
##' @param GRIDS `multilayer` - Grids. .
##' @param POLYGONS `source` - Polygons. Path to a vector layer.
##' @param METHOD `enum`  of `("[0] Standard", "[1] Shape wise, supports overlapping polygons")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param NAMING `enum`  of `("[0] Grid number", "[1] Grid name")` - Grid Naming. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param COUNT `boolean` - Number of Cells. 1 for true/yes. 0 for false/no.
##' @param MIN `boolean` - Minimum. 1 for true/yes. 0 for false/no.
##' @param MAX `boolean` - Maximum. 1 for true/yes. 0 for false/no.
##' @param RANGE `boolean` - Range. 1 for true/yes. 0 for false/no.
##' @param SUM `boolean` - Sum. 1 for true/yes. 0 for false/no.
##' @param MEAN `boolean` - Mean. 1 for true/yes. 0 for false/no.
##' @param VAR `boolean` - Variance. 1 for true/yes. 0 for false/no.
##' @param STDDEV `boolean` - Standard Deviation. 1 for true/yes. 0 for false/no.
##' @param QUANTILE `number` - Quantiles. A numeric value.
##' @param RESULT `vectorDestination` - Statistics. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * RESULT - outputVector - Statistics
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_rasterstatisticsforpolygons <- function(GRIDS = qgisprocess::qgis_default_value(), POLYGONS = qgisprocess::qgis_default_value(), METHOD = qgisprocess::qgis_default_value(), NAMING = qgisprocess::qgis_default_value(), COUNT = qgisprocess::qgis_default_value(), MIN = qgisprocess::qgis_default_value(), MAX = qgisprocess::qgis_default_value(), RANGE = qgisprocess::qgis_default_value(), SUM = qgisprocess::qgis_default_value(), MEAN = qgisprocess::qgis_default_value(), VAR = qgisprocess::qgis_default_value(), STDDEV = qgisprocess::qgis_default_value(), QUANTILE = qgisprocess::qgis_default_value(), RESULT = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:rasterstatisticsforpolygons")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:rasterstatisticsforpolygons", `GRIDS` = GRIDS, `POLYGONS` = POLYGONS, `METHOD` = METHOD, `NAMING` = NAMING, `COUNT` = COUNT, `MIN` = MIN, `MAX` = MAX, `RANGE` = RANGE, `SUM` = SUM, `MEAN` = MEAN, `VAR` = VAR, `STDDEV` = STDDEV, `QUANTILE` = QUANTILE, `RESULT` = RESULT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:rasterstatisticsforpolygons", `GRIDS` = GRIDS, `POLYGONS` = POLYGONS, `METHOD` = METHOD, `NAMING` = NAMING, `COUNT` = COUNT, `MIN` = MIN, `MAX` = MAX, `RANGE` = RANGE, `SUM` = SUM, `MEAN` = MEAN, `VAR` = VAR, `STDDEV` = STDDEV, `QUANTILE` = QUANTILE, `RESULT` = RESULT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "RESULT")
  }
}