##' QGIS Algorithm provided by SAGA Grid statistics for points (saga:gridstatisticsforpoints)
##'
##' @title QGIS algorithm Grid statistics for points
##'
##' @param GRIDS `multilayer` - Grids. .
##' @param POINTS `source` - Points. Path to a vector layer.
##' @param KERNEL_TYPE `enum`  of `("[0] square", "[1] circle")` - Kernel Type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param KERNEL_SIZE `number` - Kernel Size. A numeric value.
##' @param NAMING `enum`  of `("[0] grid number", "[1] grid name")` - Field Naming. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param RESULT `vectorDestination` - Statistics. Path for new vector layer.
##' @param COUNT `boolean` - Number of Cells. 1 for true/yes. 0 for false/no.
##' @param MIN `boolean` - Minimum. 1 for true/yes. 0 for false/no.
##' @param MAX `boolean` - Maximum. 1 for true/yes. 0 for false/no.
##' @param RANGE `boolean` - Range. 1 for true/yes. 0 for false/no.
##' @param SUM `boolean` - Sum. 1 for true/yes. 0 for false/no.
##' @param MEAN `boolean` - Mean. 1 for true/yes. 0 for false/no.
##' @param VAR `boolean` - Variance. 1 for true/yes. 0 for false/no.
##' @param STDDEV `boolean` - Standard Deviation. 1 for true/yes. 0 for false/no.
##' @param QUANTILE `number` - Quantile. A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * RESULT - outputVector - Statistics
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_gridstatisticsforpoints <- function(GRIDS = qgisprocess::qgis_default_value(), POINTS = qgisprocess::qgis_default_value(), KERNEL_TYPE = qgisprocess::qgis_default_value(), KERNEL_SIZE = qgisprocess::qgis_default_value(), NAMING = qgisprocess::qgis_default_value(), RESULT = qgisprocess::qgis_default_value(), COUNT = qgisprocess::qgis_default_value(), MIN = qgisprocess::qgis_default_value(), MAX = qgisprocess::qgis_default_value(), RANGE = qgisprocess::qgis_default_value(), SUM = qgisprocess::qgis_default_value(), MEAN = qgisprocess::qgis_default_value(), VAR = qgisprocess::qgis_default_value(), STDDEV = qgisprocess::qgis_default_value(), QUANTILE = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("saga:gridstatisticsforpoints",`GRIDS` = GRIDS, `POINTS` = POINTS, `KERNEL_TYPE` = KERNEL_TYPE, `KERNEL_SIZE` = KERNEL_SIZE, `NAMING` = NAMING, `RESULT` = RESULT, `COUNT` = COUNT, `MIN` = MIN, `MAX` = MAX, `RANGE` = RANGE, `SUM` = SUM, `MEAN` = MEAN, `VAR` = VAR, `STDDEV` = STDDEV, `QUANTILE` = QUANTILE,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "RESULT")
  }
}