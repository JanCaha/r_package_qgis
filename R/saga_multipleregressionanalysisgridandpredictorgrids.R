##' QGIS Algorithm provided by SAGA Multiple regression analysis (grid and predictor grids) (saga:multipleregressionanalysisgridandpredictorgrids)
##'
##' @title QGIS algorithm Multiple regression analysis (grid and predictor grids)
##'
##' @param DEPENDENT `raster` - Dependent Variable. Path to a raster layer.
##' @param PREDICTORS `multilayer` - Predictors. .
##' @param REGRESSION `rasterDestination` - Regression. Path for new raster layer.
##' @param RESIDUALS `rasterDestination` - Residuals. Path for new raster layer.
##' @param INFO_COEFF `source` - Details: Coefficients. Path to a vector layer.
##' @param INFO_MODEL `source` - Details: Model. Path to a vector layer.
##' @param INFO_STEPS `source` - Details: Steps. Path to a vector layer.
##' @param RESAMPLING `enum`  of `("[0] Nearest Neighbour", "[1] Bilinear Interpolation", "[2] Bicubic Spline Interpolation", "[3] B-Spline Interpolation")` - Resampling. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param COORD_X `boolean` - Include X Coordinate. 1 for true/yes. 0 for false/no.
##' @param COORD_Y `boolean` - Include Y Coordinate. 1 for true/yes. 0 for false/no.
##' @param METHOD `enum`  of `("[0] include all", "[1] forward", "[2] backward", "[3] stepwise")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param P_VALUE `number` - Significance Level. A numeric value.
##' @param CROSSVAL `enum`  of `("[0] none", "[1] leave one out", "[2] 2-fold", "[3] k-fold")` - Cross Validation. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param CROSSVAL_K `number` - Cross Validation Subsamples. A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * REGRESSION - outputRaster - Regression
##' * RESIDUALS - outputRaster - Residuals
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

saga_multipleregressionanalysisgridandpredictorgrids <- function(DEPENDENT = qgisprocess:::qgis_default_value(), PREDICTORS = qgisprocess:::qgis_default_value(), REGRESSION = qgisprocess:::qgis_default_value(), RESIDUALS = qgisprocess:::qgis_default_value(), INFO_COEFF = qgisprocess:::qgis_default_value(), INFO_MODEL = qgisprocess:::qgis_default_value(), INFO_STEPS = qgisprocess:::qgis_default_value(), RESAMPLING = qgisprocess:::qgis_default_value(), COORD_X = qgisprocess:::qgis_default_value(), COORD_Y = qgisprocess:::qgis_default_value(), METHOD = qgisprocess:::qgis_default_value(), P_VALUE = qgisprocess:::qgis_default_value(), CROSSVAL = qgisprocess:::qgis_default_value(), CROSSVAL_K = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:multipleregressionanalysisgridandpredictorgrids")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:multipleregressionanalysisgridandpredictorgrids", `DEPENDENT` = DEPENDENT, `PREDICTORS` = PREDICTORS, `REGRESSION` = REGRESSION, `RESIDUALS` = RESIDUALS, `INFO_COEFF` = INFO_COEFF, `INFO_MODEL` = INFO_MODEL, `INFO_STEPS` = INFO_STEPS, `RESAMPLING` = RESAMPLING, `COORD_X` = COORD_X, `COORD_Y` = COORD_Y, `METHOD` = METHOD, `P_VALUE` = P_VALUE, `CROSSVAL` = CROSSVAL, `CROSSVAL_K` = CROSSVAL_K,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:multipleregressionanalysisgridandpredictorgrids", `DEPENDENT` = DEPENDENT, `PREDICTORS` = PREDICTORS, `REGRESSION` = REGRESSION, `RESIDUALS` = RESIDUALS, `INFO_COEFF` = INFO_COEFF, `INFO_MODEL` = INFO_MODEL, `INFO_STEPS` = INFO_STEPS, `RESAMPLING` = RESAMPLING, `COORD_X` = COORD_X, `COORD_Y` = COORD_Y, `METHOD` = METHOD, `P_VALUE` = P_VALUE, `CROSSVAL` = CROSSVAL, `CROSSVAL_K` = CROSSVAL_K,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "REGRESSION")
  }
}