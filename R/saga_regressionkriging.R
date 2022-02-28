##' QGIS Algorithm provided by SAGA Regression kriging (saga:regressionkriging)
##'
##' @title QGIS algorithm Regression kriging
##'
##' @param POINTS `source` - Points. Path to a vector layer.
##' @param FIELD `field` - Attribute. The name of an existing field. ; delimited list of existing field names.
##' @param PREDICTORS `multilayer` - Predictors. .
##' @param REGRESSION `rasterDestination` - Regression. Path for new raster layer.
##' @param PREDICTION `rasterDestination` - Prediction. Path for new raster layer.
##' @param RESIDUALS `rasterDestination` - Residuals. Path for new raster layer.
##' @param VARIANCE `rasterDestination` - Quality Measure. Path for new raster layer.
##' @param INFO_COEFF `vectorDestination` - Regression: Coefficients. Path for new vector layer.
##' @param INFO_MODEL `vectorDestination` - Regression: Model. Path for new vector layer.
##' @param INFO_STEPS `vectorDestination` - Regression: Steps. Path for new vector layer.
##' @param TQUALITY `enum`  of `("[0] standard deviation", "[1] variance")` - Type of Quality Measure. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param LOG `boolean` - Logarithmic Transformation. 1 for true/yes. 0 for false/no.
##' @param BLOCK `boolean` - Block Kriging. 1 for true/yes. 0 for false/no.
##' @param DBLOCK `number` - Block Size. A numeric value.
##' @param VAR_MAXDIST `number` - Maximum Distance. A numeric value.
##' @param VAR_NCLASSES `number` - Lag Distance Classes. A numeric value.
##' @param VAR_NSKIP `number` - Skip. A numeric value.
##' @param VAR_MODEL `string` - Variogram Model. String value.
##' @param COORD_X `boolean` - Include X Coordinate. 1 for true/yes. 0 for false/no.
##' @param COORD_Y `boolean` - Include Y Coordinate. 1 for true/yes. 0 for false/no.
##' @param INTERCEPT `boolean` - Intercept. 1 for true/yes. 0 for false/no.
##' @param METHOD `enum`  of `("[0] include all", "[1] forward", "[2] backward", "[3] stepwise")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param P_VALUE `number` - Significance Level. A numeric value.
##' @param RESAMPLING `enum`  of `("[0] Nearest Neighbour", "[1] Bilinear Interpolation", "[2] Bicubic Spline Interpolation", "[3] B-Spline Interpolation")` - Resampling. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param SEARCH_RANGE `enum`  of `("[0] local", "[1] global")` - Search Range. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param SEARCH_RADIUS `number` - Maximum Search Distance. A numeric value.
##' @param SEARCH_POINTS_ALL `enum`  of `("[0] maximum number of nearest points", "[1] all points within search distance")` - Number of Points. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param SEARCH_POINTS_MIN `number` - Minimum. A numeric value.
##' @param SEARCH_POINTS_MAX `number` - Maximum. A numeric value.
##' @param SEARCH_DIRECTION `enum`  of `("[0] all directions", "[1] quadrants")` - Direction. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * INFO_COEFF - outputVector - Regression: Coefficients
##' * INFO_MODEL - outputVector - Regression: Model
##' * INFO_STEPS - outputVector - Regression: Steps
##' * PREDICTION - outputRaster - Prediction
##' * REGRESSION - outputRaster - Regression
##' * RESIDUALS - outputRaster - Residuals
##' * VARIANCE - outputRaster - Quality Measure
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_regressionkriging <- function(POINTS = qgisprocess::qgis_default_value(), FIELD = qgisprocess::qgis_default_value(), PREDICTORS = qgisprocess::qgis_default_value(), REGRESSION = qgisprocess::qgis_default_value(), PREDICTION = qgisprocess::qgis_default_value(), RESIDUALS = qgisprocess::qgis_default_value(), VARIANCE = qgisprocess::qgis_default_value(), INFO_COEFF = qgisprocess::qgis_default_value(), INFO_MODEL = qgisprocess::qgis_default_value(), INFO_STEPS = qgisprocess::qgis_default_value(), TQUALITY = qgisprocess::qgis_default_value(), LOG = qgisprocess::qgis_default_value(), BLOCK = qgisprocess::qgis_default_value(), DBLOCK = qgisprocess::qgis_default_value(), VAR_MAXDIST = qgisprocess::qgis_default_value(), VAR_NCLASSES = qgisprocess::qgis_default_value(), VAR_NSKIP = qgisprocess::qgis_default_value(), VAR_MODEL = qgisprocess::qgis_default_value(), COORD_X = qgisprocess::qgis_default_value(), COORD_Y = qgisprocess::qgis_default_value(), INTERCEPT = qgisprocess::qgis_default_value(), METHOD = qgisprocess::qgis_default_value(), P_VALUE = qgisprocess::qgis_default_value(), RESAMPLING = qgisprocess::qgis_default_value(), SEARCH_RANGE = qgisprocess::qgis_default_value(), SEARCH_RADIUS = qgisprocess::qgis_default_value(), SEARCH_POINTS_ALL = qgisprocess::qgis_default_value(), SEARCH_POINTS_MIN = qgisprocess::qgis_default_value(), SEARCH_POINTS_MAX = qgisprocess::qgis_default_value(), SEARCH_DIRECTION = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("saga:regressionkriging")

  output <- qgisprocess::qgis_run_algorithm("saga:regressionkriging", `POINTS` = POINTS, `FIELD` = FIELD, `PREDICTORS` = PREDICTORS, `REGRESSION` = REGRESSION, `PREDICTION` = PREDICTION, `RESIDUALS` = RESIDUALS, `VARIANCE` = VARIANCE, `INFO_COEFF` = INFO_COEFF, `INFO_MODEL` = INFO_MODEL, `INFO_STEPS` = INFO_STEPS, `TQUALITY` = TQUALITY, `LOG` = LOG, `BLOCK` = BLOCK, `DBLOCK` = DBLOCK, `VAR_MAXDIST` = VAR_MAXDIST, `VAR_NCLASSES` = VAR_NCLASSES, `VAR_NSKIP` = VAR_NSKIP, `VAR_MODEL` = VAR_MODEL, `COORD_X` = COORD_X, `COORD_Y` = COORD_Y, `INTERCEPT` = INTERCEPT, `METHOD` = METHOD, `P_VALUE` = P_VALUE, `RESAMPLING` = RESAMPLING, `SEARCH_RANGE` = SEARCH_RANGE, `SEARCH_RADIUS` = SEARCH_RADIUS, `SEARCH_POINTS_ALL` = SEARCH_POINTS_ALL, `SEARCH_POINTS_MIN` = SEARCH_POINTS_MIN, `SEARCH_POINTS_MAX` = SEARCH_POINTS_MAX, `SEARCH_DIRECTION` = SEARCH_DIRECTION,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "INFO_COEFF")
  }
}