##' QGIS Algorithm provided by SAGA Next Gen Zonal multiple regression analysis (points and predictor grids) (sagang:zonalmultipleregressionanalysispointsandpredictorgrids). ---------------- Arguments ----------------  PREDICTORS: Predictors 	Argument type:	multilayer ZONES: Zones 	Argument type:	source 	Acceptable values: 		- Path to a vector layer POINTS: Points 	Argument type:	source 	Acceptable values: 		- Path to a vector layer ATTRIBUTE: Dependent Variable 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names RESIDUALS: Residuals 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer REGRESSION: Regression 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer RESAMPLING: Resampling 	Default value:	3 	Argument type:	enum 	Available values: 		- 0: (0) Nearest Neighbour 		- 1: (1) Bilinear Interpolation 		- 2: (2) Bicubic Spline Interpolation 		- 3: (3) B-Spline Interpolation 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' COORD_X: Include X Coordinate 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression COORD_Y: Include Y Coordinate 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression INTERCEPT: Intercept 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression METHOD: Method 	Default value:	3 	Argument type:	enum 	Available values: 		- 0: (0) include all 		- 1: (1) forward 		- 2: (2) backward 		- 3: (3) stepwise 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' P_VALUE: Significance Level 	Default value:	5 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Zonal multiple regression analysis (points and predictor grids)
##'
##' @param PREDICTORS `multilayer` - Predictors. .
##' @param ZONES `source` - Zones. Path to a vector layer.
##' @param POINTS `source` - Points. Path to a vector layer.
##' @param ATTRIBUTE `field` - Dependent Variable. The name of an existing field. ; delimited list of existing field names.
##' @param RESIDUALS `vectorDestination` - Residuals. Path for new vector layer.
##' @param REGRESSION `rasterDestination` - Regression. Path for new raster layer.
##' @param RESAMPLING `enum`  of `("(0) Nearest Neighbour", "(1) Bilinear Interpolation", "(2) Bicubic Spline Interpolation", "(3) B-Spline Interpolation")` - Resampling. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param COORD_X `boolean` - Include X Coordinate. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param COORD_Y `boolean` - Include Y Coordinate. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param INTERCEPT `boolean` - Intercept. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param METHOD `enum`  of `("(0) include all", "(1) forward", "(2) backward", "(3) stepwise")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param P_VALUE `number` - Significance Level. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
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
##' @importFrom qgisprocess qgis_run_algorithm

sagang_zonalmultipleregressionanalysispointsandpredictorgrids <- function(PREDICTORS = qgisprocess:::qgis_default_value(), ZONES = qgisprocess:::qgis_default_value(), POINTS = qgisprocess:::qgis_default_value(), ATTRIBUTE = qgisprocess:::qgis_default_value(), RESIDUALS = qgisprocess:::qgis_default_value(), REGRESSION = qgisprocess:::qgis_default_value(), RESAMPLING = qgisprocess:::qgis_default_value(), COORD_X = qgisprocess:::qgis_default_value(), COORD_Y = qgisprocess:::qgis_default_value(), INTERCEPT = qgisprocess:::qgis_default_value(), METHOD = qgisprocess:::qgis_default_value(), P_VALUE = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:zonalmultipleregressionanalysispointsandpredictorgrids")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:zonalmultipleregressionanalysispointsandpredictorgrids", `PREDICTORS` = PREDICTORS, `ZONES` = ZONES, `POINTS` = POINTS, `ATTRIBUTE` = ATTRIBUTE, `RESIDUALS` = RESIDUALS, `REGRESSION` = REGRESSION, `RESAMPLING` = RESAMPLING, `COORD_X` = COORD_X, `COORD_Y` = COORD_Y, `INTERCEPT` = INTERCEPT, `METHOD` = METHOD, `P_VALUE` = P_VALUE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:zonalmultipleregressionanalysispointsandpredictorgrids", `PREDICTORS` = PREDICTORS, `ZONES` = ZONES, `POINTS` = POINTS, `ATTRIBUTE` = ATTRIBUTE, `RESIDUALS` = RESIDUALS, `REGRESSION` = REGRESSION, `RESAMPLING` = RESAMPLING, `COORD_X` = COORD_X, `COORD_Y` = COORD_Y, `INTERCEPT` = INTERCEPT, `METHOD` = METHOD, `P_VALUE` = P_VALUE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "REGRESSION")
  }
}