##' QGIS Algorithm provided by SAGA Gwr for multiple predictor layers (saga:gwrformultiplepredictorlayers)
##'
##' @title QGIS algorithm Gwr for multiple predictor layers
##'
##' @param PREDICTORS `multilayer` - Predictors. .
##' @param POINTS `source` - Points. Path to a vector layer.
##' @param DEPENDENT `field` - Dependent Variable. The name of an existing field. ; delimited list of existing field names.
##' @param RESOLUTION `enum`  of `("[0] same as predictors", "[1] user defined")` - Model Resolution. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param RESOLUTION_VAL `number` - Resolution. A numeric value.
##' @param DW_WEIGHTING `enum`  of `("[0] no distance weighting", "[1] inverse distance to a power", "[2] exponential", "[3] gaussian weighting")` - Weighting Function. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param DW_IDW_POWER `number` - Inverse Distance Weighting Power. A numeric value.
##' @param DW_IDW_OFFSET `boolean` - Inverse Distance Offset. 1 for true/yes. 0 for false/no.
##' @param DW_BANDWIDTH `number` - Gaussian and Exponential Weighting Bandwidth. A numeric value.
##' @param SEARCH_RANGE `enum`  of `("[0] search radius (local)", "[1] no search radius (global)")` - Search Range. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param SEARCH_RADIUS `number` - Search Radius. A numeric value.
##' @param SEARCH_POINTS_ALL `enum`  of `("[0] maximum number of nearest points", "[1] all points within search distance")` - Number of Points. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param SEARCH_POINTS_MIN `number` - Minimum. A numeric value.
##' @param SEARCH_POINTS_MAX `number` - Maximum. A numeric value.
##' @param SEARCH_DIRECTION `enum`  of `("[0] all directions", "[1] quadrants")` - Search Direction. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param REGRESSION `rasterDestination` - Regression. Path for new raster layer.
##' @param QUALITY `rasterDestination` - Coefficient of Determination. Path for new raster layer.
##' @param RESIDUALS `vectorDestination` - Residuals. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * REGRESSION - outputRaster - Regression
##' * QUALITY - outputRaster - Coefficient of Determination
##' * RESIDUALS - outputVector - Residuals
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_gwrformultiplepredictorlayers <- function(PREDICTORS = qgisprocess::qgis_default_value(), POINTS = qgisprocess::qgis_default_value(), DEPENDENT = qgisprocess::qgis_default_value(), RESOLUTION = qgisprocess::qgis_default_value(), RESOLUTION_VAL = qgisprocess::qgis_default_value(), DW_WEIGHTING = qgisprocess::qgis_default_value(), DW_IDW_POWER = qgisprocess::qgis_default_value(), DW_IDW_OFFSET = qgisprocess::qgis_default_value(), DW_BANDWIDTH = qgisprocess::qgis_default_value(), SEARCH_RANGE = qgisprocess::qgis_default_value(), SEARCH_RADIUS = qgisprocess::qgis_default_value(), SEARCH_POINTS_ALL = qgisprocess::qgis_default_value(), SEARCH_POINTS_MIN = qgisprocess::qgis_default_value(), SEARCH_POINTS_MAX = qgisprocess::qgis_default_value(), SEARCH_DIRECTION = qgisprocess::qgis_default_value(), REGRESSION = qgisprocess::qgis_default_value(), QUALITY = qgisprocess::qgis_default_value(), RESIDUALS = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("saga:gwrformultiplepredictorlayers")
  output <- qgisprocess::qgis_run_algorithm("saga:gwrformultiplepredictorlayers",`PREDICTORS` = PREDICTORS, `POINTS` = POINTS, `DEPENDENT` = DEPENDENT, `RESOLUTION` = RESOLUTION, `RESOLUTION_VAL` = RESOLUTION_VAL, `DW_WEIGHTING` = DW_WEIGHTING, `DW_IDW_POWER` = DW_IDW_POWER, `DW_IDW_OFFSET` = DW_IDW_OFFSET, `DW_BANDWIDTH` = DW_BANDWIDTH, `SEARCH_RANGE` = SEARCH_RANGE, `SEARCH_RADIUS` = SEARCH_RADIUS, `SEARCH_POINTS_ALL` = SEARCH_POINTS_ALL, `SEARCH_POINTS_MIN` = SEARCH_POINTS_MIN, `SEARCH_POINTS_MAX` = SEARCH_POINTS_MAX, `SEARCH_DIRECTION` = SEARCH_DIRECTION, `REGRESSION` = REGRESSION, `QUALITY` = QUALITY, `RESIDUALS` = RESIDUALS,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "REGRESSION")
  }
}