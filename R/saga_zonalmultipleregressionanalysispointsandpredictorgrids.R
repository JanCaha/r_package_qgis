##' QGIS Algorithm provided by SAGA Zonal multiple regression analysis (points and predictor grids) (saga:zonalmultipleregressionanalysispointsandpredictorgrids)
##'
##' @title QGIS algorithm Zonal multiple regression analysis (points and predictor grids)
##'
##' @param PREDICTORS `multilayer` - Predictors. .
##' @param ZONES `source` - Zones. Path to a vector layer.
##' @param POINTS `source` - Points. Path to a vector layer.
##' @param ATTRIBUTE `source` - Dependent Variable. Path to a vector layer.
##' @param RESIDUALS `vectorDestination` - Residuals. Path for new vector layer.
##' @param REGRESSION `rasterDestination` - Regression. Path for new raster layer.
##' @param RESAMPLING `enum`  of `("[0] Nearest Neighbour", "[1] Bilinear Interpolation", "[2] Bicubic Spline Interpolation", "[3] B-Spline Interpolation")` - Resampling. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param COORD_X `boolean` - Include X Coordinate. 1 for true/yes. 0 for false/no.
##' @param COORD_Y `boolean` - Include Y Coordinate. 1 for true/yes. 0 for false/no.
##' @param INTERCEPT `boolean` - Intercept. 1 for true/yes. 0 for false/no.
##' @param METHOD `enum`  of `("[0] include all", "[1] forward", "[2] backward", "[3] stepwise")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param P_VALUE `number` - Significance Level. A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * REGRESSION - outputRaster - Regression
##' * RESIDUALS - outputVector - Residuals
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_zonalmultipleregressionanalysispointsandpredictorgrids <- function(PREDICTORS = qgisprocess::qgis_default_value(), ZONES = qgisprocess::qgis_default_value(), POINTS = qgisprocess::qgis_default_value(), ATTRIBUTE = qgisprocess::qgis_default_value(), RESIDUALS = qgisprocess::qgis_default_value(), REGRESSION = qgisprocess::qgis_default_value(), RESAMPLING = qgisprocess::qgis_default_value(), COORD_X = qgisprocess::qgis_default_value(), COORD_Y = qgisprocess::qgis_default_value(), INTERCEPT = qgisprocess::qgis_default_value(), METHOD = qgisprocess::qgis_default_value(), P_VALUE = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:zonalmultipleregressionanalysispointsandpredictorgrids")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:zonalmultipleregressionanalysispointsandpredictorgrids", `PREDICTORS` = PREDICTORS, `ZONES` = ZONES, `POINTS` = POINTS, `ATTRIBUTE` = ATTRIBUTE, `RESIDUALS` = RESIDUALS, `REGRESSION` = REGRESSION, `RESAMPLING` = RESAMPLING, `COORD_X` = COORD_X, `COORD_Y` = COORD_Y, `INTERCEPT` = INTERCEPT, `METHOD` = METHOD, `P_VALUE` = P_VALUE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:zonalmultipleregressionanalysispointsandpredictorgrids", `PREDICTORS` = PREDICTORS, `ZONES` = ZONES, `POINTS` = POINTS, `ATTRIBUTE` = ATTRIBUTE, `RESIDUALS` = RESIDUALS, `REGRESSION` = REGRESSION, `RESAMPLING` = RESAMPLING, `COORD_X` = COORD_X, `COORD_Y` = COORD_Y, `INTERCEPT` = INTERCEPT, `METHOD` = METHOD, `P_VALUE` = P_VALUE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "REGRESSION")
  }
}