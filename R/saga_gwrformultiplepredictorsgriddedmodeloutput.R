##' QGIS Algorithm provided by SAGA Gwr for multiple predictors (gridded model output) (saga:gwrformultiplepredictorsgriddedmodeloutput)
##'
##' @title QGIS algorithm Gwr for multiple predictors (gridded model output)
##'
##' @param POINTS `source` - Points. Path to a vector layer.
##' @param DEPENDENT `field` - Dependent Variable. The name of an existing field. ; delimited list of existing field names.
##' @param PREDICTORS `field` - Predictor. The name of an existing field. ; delimited list of existing field names.
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
##' @param TARGET_USER_XMIN_TARGET_USER_XMAX_TARGET_USER_YMIN_TARGET_USER_YMAX `extent` - Output extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used.. Original algorithm parameter name: {name}.
##' @param TARGET_USER_SIZE `number` - Cellsize. A numeric value.
##' @param TARGET_USER_FITS `enum`  of `("[0] nodes", "[1] cells")` - Fit. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param REGRESSION `vectorDestination` - Regression. Path for new vector layer.
##' @param SLOPES `rasterDestination` - Slopes. Path for new raster layer.
##' @param TARGET_INTERCEPT `rasterDestination` - Intercept. Path for new raster layer.
##' @param TARGET_QUALITY `rasterDestination` - Quality. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * REGRESSION - outputVector - Regression
##' * SLOPES - outputRaster - Slopes
##' * TARGET_INTERCEPT - outputRaster - Intercept
##' * TARGET_QUALITY - outputRaster - Quality
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_gwrformultiplepredictorsgriddedmodeloutput <- function(POINTS = qgisprocess::qgis_default_value(), DEPENDENT = qgisprocess::qgis_default_value(), PREDICTORS = qgisprocess::qgis_default_value(), DW_WEIGHTING = qgisprocess::qgis_default_value(), DW_IDW_POWER = qgisprocess::qgis_default_value(), DW_IDW_OFFSET = qgisprocess::qgis_default_value(), DW_BANDWIDTH = qgisprocess::qgis_default_value(), SEARCH_RANGE = qgisprocess::qgis_default_value(), SEARCH_RADIUS = qgisprocess::qgis_default_value(), SEARCH_POINTS_ALL = qgisprocess::qgis_default_value(), SEARCH_POINTS_MIN = qgisprocess::qgis_default_value(), SEARCH_POINTS_MAX = qgisprocess::qgis_default_value(), SEARCH_DIRECTION = qgisprocess::qgis_default_value(), TARGET_USER_XMIN_TARGET_USER_XMAX_TARGET_USER_YMIN_TARGET_USER_YMAX = qgisprocess::qgis_default_value(), TARGET_USER_SIZE = qgisprocess::qgis_default_value(), TARGET_USER_FITS = qgisprocess::qgis_default_value(), REGRESSION = qgisprocess::qgis_default_value(), SLOPES = qgisprocess::qgis_default_value(), TARGET_INTERCEPT = qgisprocess::qgis_default_value(), TARGET_QUALITY = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("saga:gwrformultiplepredictorsgriddedmodeloutput",`POINTS` = POINTS, `DEPENDENT` = DEPENDENT, `PREDICTORS` = PREDICTORS, `DW_WEIGHTING` = DW_WEIGHTING, `DW_IDW_POWER` = DW_IDW_POWER, `DW_IDW_OFFSET` = DW_IDW_OFFSET, `DW_BANDWIDTH` = DW_BANDWIDTH, `SEARCH_RANGE` = SEARCH_RANGE, `SEARCH_RADIUS` = SEARCH_RADIUS, `SEARCH_POINTS_ALL` = SEARCH_POINTS_ALL, `SEARCH_POINTS_MIN` = SEARCH_POINTS_MIN, `SEARCH_POINTS_MAX` = SEARCH_POINTS_MAX, `SEARCH_DIRECTION` = SEARCH_DIRECTION, `TARGET_USER_XMIN TARGET_USER_XMAX TARGET_USER_YMIN TARGET_USER_YMAX` = TARGET_USER_XMIN_TARGET_USER_XMAX_TARGET_USER_YMIN_TARGET_USER_YMAX, `TARGET_USER_SIZE` = TARGET_USER_SIZE, `TARGET_USER_FITS` = TARGET_USER_FITS, `REGRESSION` = REGRESSION, `SLOPES` = SLOPES, `TARGET_INTERCEPT` = TARGET_INTERCEPT, `TARGET_QUALITY` = TARGET_QUALITY,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "REGRESSION")
  }
}