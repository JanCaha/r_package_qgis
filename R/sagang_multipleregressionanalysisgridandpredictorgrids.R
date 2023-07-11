##' QGIS Algorithm provided by SAGA Next Gen Multiple regression analysis (grid and predictor grids) (sagang:multipleregressionanalysisgridandpredictorgrids). ---------------- Arguments ----------------  DEPENDENT: Dependent Variable 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer PREDICTORS: Predictors 	Argument type:	multilayer REGRESSION: Regression 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer RESIDUALS: Residuals 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer INFO_COEFF: Details: Coefficients 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer INFO_MODEL: Details: Model 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer INFO_STEPS: Details: Steps 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer RESAMPLING: Resampling 	Default value:	3 	Argument type:	enum 	Available values: 		- 0: (0) Nearest Neighbour 		- 1: (1) Bilinear Interpolation 		- 2: (2) Bicubic Spline Interpolation 		- 3: (3) B-Spline Interpolation 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' COORD_X: Include X Coordinate 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression COORD_Y: Include Y Coordinate 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression METHOD: Method 	Default value:	3 	Argument type:	enum 	Available values: 		- 0: (0) include all 		- 1: (1) forward 		- 2: (2) backward 		- 3: (3) stepwise 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' P_VALUE: Significance Level 	Default value:	5 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression CROSSVAL: Cross Validation 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) none 		- 1: (1) leave one out 		- 2: (2) 2-fold 		- 3: (3) k-fold 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' CROSSVAL_K: Cross Validation Subsamples 	Default value:	10 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Multiple regression analysis (grid and predictor grids)
##'
##' @param DEPENDENT `raster` - Dependent Variable. Path to a raster layer.
##' @param PREDICTORS `multilayer` - Predictors. .
##' @param REGRESSION `rasterDestination` - Regression. Path for new raster layer.
##' @param RESIDUALS `rasterDestination` - Residuals. Path for new raster layer.
##' @param INFO_COEFF `vectorDestination` - Details: Coefficients. Path for new vector layer.
##' @param INFO_MODEL `vectorDestination` - Details: Model. Path for new vector layer.
##' @param INFO_STEPS `vectorDestination` - Details: Steps. Path for new vector layer.
##' @param RESAMPLING `enum`  of `("(0) Nearest Neighbour", "(1) Bilinear Interpolation", "(2) Bicubic Spline Interpolation", "(3) B-Spline Interpolation")` - Resampling. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param COORD_X `boolean` - Include X Coordinate. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param COORD_Y `boolean` - Include Y Coordinate. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param METHOD `enum`  of `("(0) include all", "(1) forward", "(2) backward", "(3) stepwise")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param P_VALUE `number` - Significance Level. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param CROSSVAL `enum`  of `("(0) none", "(1) leave one out", "(2) 2-fold", "(3) k-fold")` - Cross Validation. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param CROSSVAL_K `number` - Cross Validation Subsamples. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
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
##' * REGRESSION - outputRaster - Regression
##' * RESIDUALS - outputRaster - Residuals
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_multipleregressionanalysisgridandpredictorgrids <- function(DEPENDENT = qgisprocess:::qgis_default_value(), PREDICTORS = qgisprocess:::qgis_default_value(), REGRESSION = qgisprocess:::qgis_default_value(), RESIDUALS = qgisprocess:::qgis_default_value(), INFO_COEFF = qgisprocess:::qgis_default_value(), INFO_MODEL = qgisprocess:::qgis_default_value(), INFO_STEPS = qgisprocess:::qgis_default_value(), RESAMPLING = qgisprocess:::qgis_default_value(), COORD_X = qgisprocess:::qgis_default_value(), COORD_Y = qgisprocess:::qgis_default_value(), METHOD = qgisprocess:::qgis_default_value(), P_VALUE = qgisprocess:::qgis_default_value(), CROSSVAL = qgisprocess:::qgis_default_value(), CROSSVAL_K = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:multipleregressionanalysisgridandpredictorgrids")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:multipleregressionanalysisgridandpredictorgrids", `DEPENDENT` = DEPENDENT, `PREDICTORS` = PREDICTORS, `REGRESSION` = REGRESSION, `RESIDUALS` = RESIDUALS, `INFO_COEFF` = INFO_COEFF, `INFO_MODEL` = INFO_MODEL, `INFO_STEPS` = INFO_STEPS, `RESAMPLING` = RESAMPLING, `COORD_X` = COORD_X, `COORD_Y` = COORD_Y, `METHOD` = METHOD, `P_VALUE` = P_VALUE, `CROSSVAL` = CROSSVAL, `CROSSVAL_K` = CROSSVAL_K,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:multipleregressionanalysisgridandpredictorgrids", `DEPENDENT` = DEPENDENT, `PREDICTORS` = PREDICTORS, `REGRESSION` = REGRESSION, `RESIDUALS` = RESIDUALS, `INFO_COEFF` = INFO_COEFF, `INFO_MODEL` = INFO_MODEL, `INFO_STEPS` = INFO_STEPS, `RESAMPLING` = RESAMPLING, `COORD_X` = COORD_X, `COORD_Y` = COORD_Y, `METHOD` = METHOD, `P_VALUE` = P_VALUE, `CROSSVAL` = CROSSVAL, `CROSSVAL_K` = CROSSVAL_K,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "INFO_COEFF")
  }
}