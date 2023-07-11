##' QGIS Algorithm provided by SAGA Next Gen Multiple regression analysis (points and predictor grids) (sagang:multipleregressionanalysispointsandpredictorgrids). ---------------- Arguments ----------------  PREDICTORS: Predictors 	Argument type:	multilayer POINTS: Points 	Argument type:	source 	Acceptable values: 		- Path to a vector layer ATTRIBUTE: Dependent Variable 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names INFO_COEFF: Details: Coefficients 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer INFO_MODEL: Details: Model 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer INFO_STEPS: Details: Steps 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer RESIDUALS: Residuals 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer REGRESSION: Regression 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer REGRESCORR: Regression with Residual Correction 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer RESAMPLING: Resampling 	Default value:	3 	Argument type:	enum 	Available values: 		- 0: (0) Nearest Neighbour 		- 1: (1) Bilinear Interpolation 		- 2: (2) Bicubic Spline Interpolation 		- 3: (3) B-Spline Interpolation 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' COORD_X: Include X Coordinate 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression COORD_Y: Include Y Coordinate 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression INTERCEPT: Intercept 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression METHOD: Method 	Default value:	3 	Argument type:	enum 	Available values: 		- 0: (0) include all 		- 1: (1) forward 		- 2: (2) backward 		- 3: (3) stepwise 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' P_VALUE: Significance Level 	Default value:	5 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression CROSSVAL: Cross Validation 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) none 		- 1: (1) leave one out 		- 2: (2) 2-fold 		- 3: (3) k-fold 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' CROSSVAL_K: Cross Validation Subsamples 	Default value:	10 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression RESIDUAL_COR: Residual Interpolation 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) Multilevel B-Spline Interpolation 		- 1: (1) Inverse Distance Weighted 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3'
##'
##' @title QGIS algorithm - Multiple regression analysis (points and predictor grids)
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
##' @param RESAMPLING `enum`  of `("(0) Nearest Neighbour", "(1) Bilinear Interpolation", "(2) Bicubic Spline Interpolation", "(3) B-Spline Interpolation")` - Resampling. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param COORD_X `boolean` - Include X Coordinate. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param COORD_Y `boolean` - Include Y Coordinate. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param INTERCEPT `boolean` - Intercept. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param METHOD `enum`  of `("(0) include all", "(1) forward", "(2) backward", "(3) stepwise")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param P_VALUE `number` - Significance Level. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param CROSSVAL `enum`  of `("(0) none", "(1) leave one out", "(2) 2-fold", "(3) k-fold")` - Cross Validation. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param CROSSVAL_K `number` - Cross Validation Subsamples. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param RESIDUAL_COR `enum`  of `("(0) Multilevel B-Spline Interpolation", "(1) Inverse Distance Weighted")` - Residual Interpolation. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * INFO_COEFF - outputVector - Details: Coefficients
##' * INFO_MODEL - outputVector - Details: Model
##' * INFO_STEPS - outputVector - Details: Steps
##' * REGRESCORR - outputRaster - Regression with Residual Correction
##' * REGRESSION - outputRaster - Regression
##' * RESIDUALS - outputVector - Residuals
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_multipleregressionanalysispointsandpredictorgrids <- function(PREDICTORS = qgisprocess:::qgis_default_value(), POINTS = qgisprocess:::qgis_default_value(), ATTRIBUTE = qgisprocess:::qgis_default_value(), INFO_COEFF = qgisprocess:::qgis_default_value(), INFO_MODEL = qgisprocess:::qgis_default_value(), INFO_STEPS = qgisprocess:::qgis_default_value(), RESIDUALS = qgisprocess:::qgis_default_value(), REGRESSION = qgisprocess:::qgis_default_value(), REGRESCORR = qgisprocess:::qgis_default_value(), RESAMPLING = qgisprocess:::qgis_default_value(), COORD_X = qgisprocess:::qgis_default_value(), COORD_Y = qgisprocess:::qgis_default_value(), INTERCEPT = qgisprocess:::qgis_default_value(), METHOD = qgisprocess:::qgis_default_value(), P_VALUE = qgisprocess:::qgis_default_value(), CROSSVAL = qgisprocess:::qgis_default_value(), CROSSVAL_K = qgisprocess:::qgis_default_value(), RESIDUAL_COR = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:multipleregressionanalysispointsandpredictorgrids")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:multipleregressionanalysispointsandpredictorgrids", `PREDICTORS` = PREDICTORS, `POINTS` = POINTS, `ATTRIBUTE` = ATTRIBUTE, `INFO_COEFF` = INFO_COEFF, `INFO_MODEL` = INFO_MODEL, `INFO_STEPS` = INFO_STEPS, `RESIDUALS` = RESIDUALS, `REGRESSION` = REGRESSION, `REGRESCORR` = REGRESCORR, `RESAMPLING` = RESAMPLING, `COORD_X` = COORD_X, `COORD_Y` = COORD_Y, `INTERCEPT` = INTERCEPT, `METHOD` = METHOD, `P_VALUE` = P_VALUE, `CROSSVAL` = CROSSVAL, `CROSSVAL_K` = CROSSVAL_K, `RESIDUAL_COR` = RESIDUAL_COR,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:multipleregressionanalysispointsandpredictorgrids", `PREDICTORS` = PREDICTORS, `POINTS` = POINTS, `ATTRIBUTE` = ATTRIBUTE, `INFO_COEFF` = INFO_COEFF, `INFO_MODEL` = INFO_MODEL, `INFO_STEPS` = INFO_STEPS, `RESIDUALS` = RESIDUALS, `REGRESSION` = REGRESSION, `REGRESCORR` = REGRESCORR, `RESAMPLING` = RESAMPLING, `COORD_X` = COORD_X, `COORD_Y` = COORD_Y, `INTERCEPT` = INTERCEPT, `METHOD` = METHOD, `P_VALUE` = P_VALUE, `CROSSVAL` = CROSSVAL, `CROSSVAL_K` = CROSSVAL_K, `RESIDUAL_COR` = RESIDUAL_COR,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "INFO_COEFF")
  }
}