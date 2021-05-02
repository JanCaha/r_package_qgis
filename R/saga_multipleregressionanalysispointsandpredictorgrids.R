##' QGIS Algorithm provided by SAGA Multiple regression analysis (points and predictor grids) (saga:multipleregressionanalysispointsandpredictorgrids)
##'
##' @title QGIS algorithm Multiple regression analysis (points and predictor grids)
##'
##' @param PREDICTORS `multilayer` - Predictors. .
##' @param POINTS `source` - Points. Path to a vector layer.
##' @param ATTRIBUTE `field` - Dependent Variable. The name of an existing field. ; delimited list of existing field names.
##' @param INFO_COEFF `vectorDestination` - Details: Coefficients. Path for new vector layer.
##' @param INFO_MODEL `vectorDestination` - Details: Model. Path for new vector layer.
##' @param INFO_STEPS `vectorDestination` - Details: Steps. Path for new vector layer.
##' @param RESIDUALS `vectorDestination` - Residuals. Path for new vector layer.
##' @param REGRESSION `rasterDestination` - Regression. Path for new raster layer.
##' @param REGRESCORR `rasterDestination` - Regression with Residual Correction. Path for new raster layer.
##' @param RESAMPLING `enum`  of `("[0] Nearest Neighbour", "[1] Bilinear Interpolation", "[2] Bicubic Spline Interpolation", "[3] B-Spline Interpolation")` - Resampling. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param COORD_X `boolean` - Include X Coordinate. 1 for true/yes. 0 for false/no.
##' @param COORD_Y `boolean` - Include Y Coordinate. 1 for true/yes. 0 for false/no.
##' @param INTERCEPT `boolean` - Intercept. 1 for true/yes. 0 for false/no.
##' @param METHOD `enum`  of `("[0] include all", "[1] forward", "[2] backward", "[3] stepwise")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param P_VALUE `number` - Significance Level. A numeric value.
##' @param CROSSVAL `enum`  of `("[0] none", "[1] leave one out", "[2] 2-fold", "[3] k-fold")` - Cross Validation. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param CROSSVAL_K `number` - Cross Validation Subsamples. A numeric value.
##' @param RESIDUAL_COR `enum`  of `("[0] Multleve B-Spline Interpolation", "[1] Inverse Distance Weighted")` - Residual Interpolation. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * INFO_COEFF - outputVector - Details
##' * INFO_MODEL - outputVector - Details
##' * INFO_STEPS - outputVector - Details
##' * RESIDUALS - outputVector - Residuals
##' * REGRESSION - outputRaster - Regression
##' * REGRESCORR - outputRaster - Regression with Residual Correction
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_multipleregressionanalysispointsandpredictorgrids <- function(PREDICTORS = qgisprocess::qgis_default_value(), POINTS = qgisprocess::qgis_default_value(), ATTRIBUTE = qgisprocess::qgis_default_value(), INFO_COEFF = qgisprocess::qgis_default_value(), INFO_MODEL = qgisprocess::qgis_default_value(), INFO_STEPS = qgisprocess::qgis_default_value(), RESIDUALS = qgisprocess::qgis_default_value(), REGRESSION = qgisprocess::qgis_default_value(), REGRESCORR = qgisprocess::qgis_default_value(), RESAMPLING = qgisprocess::qgis_default_value(), COORD_X = qgisprocess::qgis_default_value(), COORD_Y = qgisprocess::qgis_default_value(), INTERCEPT = qgisprocess::qgis_default_value(), METHOD = qgisprocess::qgis_default_value(), P_VALUE = qgisprocess::qgis_default_value(), CROSSVAL = qgisprocess::qgis_default_value(), CROSSVAL_K = qgisprocess::qgis_default_value(), RESIDUAL_COR = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("saga:multipleregressionanalysispointsandpredictorgrids")
  output <- qgisprocess::qgis_run_algorithm("saga:multipleregressionanalysispointsandpredictorgrids",`PREDICTORS` = PREDICTORS, `POINTS` = POINTS, `ATTRIBUTE` = ATTRIBUTE, `INFO_COEFF` = INFO_COEFF, `INFO_MODEL` = INFO_MODEL, `INFO_STEPS` = INFO_STEPS, `RESIDUALS` = RESIDUALS, `REGRESSION` = REGRESSION, `REGRESCORR` = REGRESCORR, `RESAMPLING` = RESAMPLING, `COORD_X` = COORD_X, `COORD_Y` = COORD_Y, `INTERCEPT` = INTERCEPT, `METHOD` = METHOD, `P_VALUE` = P_VALUE, `CROSSVAL` = CROSSVAL, `CROSSVAL_K` = CROSSVAL_K, `RESIDUAL_COR` = RESIDUAL_COR,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "INFO_COEFF")
  }
}